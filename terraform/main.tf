provider "aws" {
  region = var.region
}

resource "aws_key_pair" "key" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)
}

resource "aws_security_group" "allow_ssh" {
  name        = "${var.name}-sg"
  description = "Allow SSH inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_ssh_cidrs
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "ansible_host" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.key.key_name
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = var.name
  }

  # Step 1: Create Jenkins .ssh directory
  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("/Users/koteswarp/.ssh/id_ed25519")
      host        = self.public_ip
    }

    inline = [
      "echo 'Creating Jenkins .ssh directory...'",
      "sudo mkdir -p /var/lib/jenkins/.ssh",
      "sudo chown -R jenkins:jenkins /var/lib/jenkins/.ssh",
      "sudo chmod 700 /var/lib/jenkins/.ssh"
    ]
  }

  # Step 2: Upload the key to /tmp
  provisioner "file" {
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("/Users/koteswarp/.ssh/id_ed25519")
      host        = self.public_ip
    }

    source      = "/Users/koteswarp/.ssh/id_ed25519"
    destination = "/tmp/my-key.pem"
  }

  # Step 3: Move key and check Jenkins password
  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("/Users/koteswarp/.ssh/id_ed25519")
      host        = self.public_ip
    }

    inline = [
      "echo 'Moving SSH key to Jenkins .ssh directory...'",
      "sudo mv /tmp/my-key.pem /var/lib/jenkins/.ssh/my-key.pem",
      "sudo chown jenkins:jenkins /var/lib/jenkins/.ssh/my-key.pem",
      "sudo chmod 600 /var/lib/jenkins/.ssh/my-key.pem",
      "echo 'Waiting 5 minutes for Jenkins to initialize...'",
      "sleep 180",
      "echo 'Jenkins Initial Admin Password:'",
      "sudo cat /var/lib/jenkins/secrets/initialAdminPassword || echo 'Not ready yet...'",
      "sudo yum install python3-pip",
      "sudo /usr/bin/python3 -m pip install boto3 botocore"
    ]
  }


}
