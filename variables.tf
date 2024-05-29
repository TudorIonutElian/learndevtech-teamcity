variable "teamcity_instance_type" {
  type        = string
  description = "TeamCity instance type"
}

variable "teamcity_instance_count" {
  type        = number
  default     = 1
  description = "Number of instances to create"
}

variable "startsWith" {
  description = "The prefix of the AMI name"
  type        = string
}

variable "endsWith" {
  description = "The suffix of the AMI name"
  type        = string
}

variable "architecture" {
  description = "The architecture of the AMI"
  type        = string
}

variable "teamcity_rds_username" {
  description = "teamcity rds username"
  type        = string
}

variable "teamcity_rds_password" {
  type        = string
  description = "teamcity rds passoword"
}