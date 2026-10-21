
output "instance_hostname" {
  description = "Pvt EC2 DNS"
  value       = aws_instance.pgp_server.private_dns
}
