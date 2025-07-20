output "ansible_instance_public_ip" {
  value = aws_instance.ansible_host.public_ip
}

output "ansible_instance_id" {
  value = aws_instance.ansible_host.id
}
