variable "load_balancer_name" {
    type          = string
    description   = "The name of the load balancer"
    default       = "load-balancer"
}

variable "internal" {
    description = "If Loadbalancer should be internal (true) or public (false)"
    default = false
}

variable "load_balancer_type" {
    type        = string
    description = "The type of the load balancer"
    default     = "application"
}

variable "subnets" {
    type        = list(string)
    description = "The IDs of the subnets where the load balancer will be created"
}

variable "security_groups" {
    type        = string
    description = "The IDs of the security groups to associate with the load balancer"
}

variable "target_group_name" {
    type        = string
    description = "The name of the target group"
    default = "frontend"
}

variable "vpc_id" {
  description = "ID of the VPC"
}

variable "name_prefix" {
    type = string
    default = "lb"
}

variable "target_group_port" {
    type        = number
    description = "The port on which the target group is listening for incoming traffic"
    default     = 80
}

variable "target_group_protocol" {
    type        = string
    description = "The protocol to use for routing traffic to the target group"
    default     = "HTTP"
}

variable "listener_port" {
    description = "LB listener port"
    default = 80
}

variable "listener_protocol" {
    description = "LB listener port"
    default = "HTTP"
}

variable "target_id" {
    description = "EC2 instance target"
  
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]
}

