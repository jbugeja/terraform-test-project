variable "vpc_cidr_block" {
  type          = string
  description   = "The CIDR block for the VPC"
  default       = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  type          = string
  description   = "The CIDR block for the public subnet"
  default       = "10.0.1.0/24"
}

variable "private_subnet_cidr_block" {
  type        = string
  description = "The CIDR block for the private subnet"
  default     = "10.0.2.0/24"
}

variable "private_subnet2_cidr_block" {
  type        = string
  description = "The CIDR block for the private subnet"
  default       = "10.0.3.0/24"
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]
}
