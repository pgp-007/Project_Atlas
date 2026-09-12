output "instance_hostnametester" {
description = "EC2 private name"
value = aws_instance.app_server.private_dns
}
