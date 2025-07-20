variable "region" {
  default = "ap-south-1"
}

variable "ami_id" {
  description = "Amazon Linux 2 AMI ID"
  default     = "ami-0a1235697f4afa8a4"
}

variable "instance_type" {
  default = "t2.large"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  default     = "koti"
}

variable "public_key_path" {
  description = "Path to your public key file"
  default     = "~/.ssh/id_ed25519.pub"
}

variable "vpc_id" {
  default = "vpc-0d6f0c1573650bbf1"
}
variable "subnet_id" {
  default = "subnet-099d28f2b7913715a"
}

variable "name" {
  default = "ci-cd-server"
}

variable "allowed_ssh_cidrs" {
  default = ["0.0.0.0/0"]
}
