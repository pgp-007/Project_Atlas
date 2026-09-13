output "instance_pvt_hostname" {
description="ec2 instance pvt hostname"
value=aws_instance.app_server.private_dns
}
