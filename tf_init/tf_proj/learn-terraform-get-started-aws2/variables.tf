variable "instance_name" {
  description = "EC2 Instance name tag"
  type        = string
  default     = "pgp-ec2tflearn"
}

variable "instance_type" {
  description = "ev2 instance type"
  type        = string
  default     = "t3.micro"
}
