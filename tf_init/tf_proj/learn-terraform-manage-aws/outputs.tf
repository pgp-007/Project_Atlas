output "instance_pvt_hostname" {
  description = "ec2 instance pvt hostname"
  value       = aws_instance.app_server.private_dns
}

output "instance_pub_hostname" {
  description = "ec2 instance pub hostname"
  value       = aws_instance.app_server.public_dns
}

output "instance_pub_ip" {
  value = aws_instance.app_server.public_ip
}
