variable "app_name" {
  description = "Base app name"
  type    = string
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_1_cidr" {
  type        = string
  description = "The CIDR block for the first subnet"
  default     = "10.0.1.0/24"
}

variable "subnet_2_cidr" {
  type        = string
  description = "The CIDR block for the second subnet"
  default     = "10.0.2.0/24"
}

variable "subnet_1_az" {
  type        = string
  description = "Availability Zone for the first subnet"
  default     = "eu-central-1a"
}

variable "subnet_2_az" {
  type        = string
  description = "Availability Zone for the second subnet"
  default     = "eu-central-1b"
}
