variable "db_name" {
  type        = string
  description = "The name of the RDS instance"
  default     = "testRDS"
}

variable "db_engine" {
  type        = string
  default     = "mysql"
  description = "The name of the database engine to be used for this DB instance"
}

variable "db_engine_version" {
  type        = string
  default     = "8.0"
  description = "The version number of the database engine to be used"
}

variable "db_instance_class" {
  type        = string
  default     = "db.t2.micro"
  description = "The instance class of the RDS instance"
}

variable "db_allocated_storage" {
  type        = number
  default     = 20
  description = "The amount of storage allocated to the RDS instance, in GB"
}

variable "db_username" {
  type        = string
  description = "The username for the master DB user"
  default     = "username"
}

variable "db_password" {
  type        = string
  description = "The password for the master DB user"
  default = "password"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC where the RDS instance will be launched"
}

variable "publicly_accessible" {
  type        = bool
  default     = false
  description = "Whether the DB instance is publicly accessible"
}

variable "db_security_group_name" {
  type        = string
  description = "The name of the DB security group"
  default = "rds-db-sg"
}

variable "db_port" {
  type        = number
  default     = 3306
  description = "The port number on which the database accepts connections"
}

variable "allowed_cidr_blocks" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "The list of CIDR blocks that are allowed to access the database"
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}
