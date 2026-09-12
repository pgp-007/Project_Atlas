variable "instance_name"{
description = "Name of the EC2 instance"
type=string
default="learn-terraform-vars"
}

variable "instance_type"{
description="Type of EC2 instance"
type=string
default="t3.micro"
}
