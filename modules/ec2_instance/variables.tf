variable "instance_type" {
  description = "Type of instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "vpc_id" {
  description = "ID of the VPC"
}

variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instance will be launched"
  type        = string
}
variable "vpc_security_group_id" {
  description = "The ID of the security group"
}
