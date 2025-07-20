#!/bin/bash
# Install Jenkins, Ansible, Git, Maven, Python3 & boto3 on Amazon Linux 2

# Update system packages
yum update -y

# Install Java (required for Jenkins)
yum install -y java-11-amazon-corretto

# Enable Ansible repo and install Ansible, Git, Maven, Python3
amazon-linux-extras enable ansible2
yum install -y ansible git maven python3


# Add Jenkins repo and import the key
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install Jenkins
yum install -y jenkins

# Enable and start Jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo service jenkins start


# Optional: Open firewall port for Jenkins (if firewalld is installed and used)
# firewall-cmd --permanent --add-port=8080/tcp
# firewall-cmd --reload

# Create AWS credentials file for Jenkins user
mkdir -p /var/lib/jenkins/.aws
mkdir -p /var/lib/jenkins/.ssh

cat > /var/lib/jenkins/.aws/credentials <<EOF
[default]
aws_access_key_id = *****
aws_secret_access_key = *****
EOF

chown -R jenkins:jenkins /var/lib/jenkins/.aws
chmod 600 /var/lib/jenkins/.aws/credentials

# OPTIONAL: Copy private SSH key (for Ansible EC2 provisioning via Jenkins)
# Replace YOUR_PRIVATE_KEY_CONTENT with actual private key

# Install boto3 and botocore
sudo yum install python3-pip
sudo /usr/bin/python3 -m pip install boto3 botocore