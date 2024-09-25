variable "app_name" {
  description = "Base app name"
  type    = string
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs for the RDS instance"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "List of security group IDs to associate with the RDS instance"
}

variable "allocated_storage" {
  type        = number
  description = "The allocated storage in GBs"
  default     = 20
}

variable "engine" {
  type        = string
  description = "The database engine to use"
  default     = "postgres"
}

variable "engine_version" {
  type        = string
  description = "The database engine version"
  default     = "16.3"
}

variable "instance_class" {
  type        = string
  description = "The instance type of the RDS instance"
  default     = "db.t3.micro"
}

variable "db_name" {
  type        = string
  description = "The name of the database to create"
  default     = "mydb"
}

variable "username" {
  type        = string
  description = "The username for the master DB user"
  default     = "postgres"
}

variable "password" {
  type        = string
  description = "The password for the master DB user"
  default     = "postgres"
}

variable "skip_final_snapshot" {
  type        = bool
  description = "Whether to skip taking a final snapshot before deleting the instance"
  default     = true
}
