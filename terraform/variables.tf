variable "region" {
  default = "ap-south-1"
}

variable "ami_id" {
  description = "Amazon Linux 2 AMI ID"
  default     = "ami-0d0ad8bb301edb745" # Update with the latest Amazon Linux 2 AMI ID for your region
}

variable "instance_type" {
  default = "t2.large"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  default     = "cicdkeypair"
}

variable "public_key_path" {
  description = "Path to your public key file"
  default     = "C:/Users/AumSaiRam/.ssh/id_ed25519.pub"
}

variable "vpc_id" {
  default = "vpc-089f00b10cfbbd809"
}
variable "subnet_id" {
  default = "subnet-0546d2689721b81f1"
}

variable "name" {
  default = "ci-cd-server"
}

variable "allowed_ssh_cidrs" {
  default = ["0.0.0.0/0"]
}
