variable "app_name" {
  description = "Base app name"

  type    = string
  default = "hello-world"
}

variable "aws_region" {
  description = "AWS region for all resources."

  type    = string
  default = "eu-central-1"
}

variable "db_username" {
  description = "Username for RDS database."

  type    = string
  default = "postgres"
}

variable "db_password" {
  description = "Password for RDS database."

  type    = string
  default = "postgres"
}