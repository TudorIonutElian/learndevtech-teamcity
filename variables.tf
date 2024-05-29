variable "teamcity_instance_type" {
  type        = string
  description = "TeamCity instance type"
}

variable "teamcity_instance_count" {
  type        = number
  default     = 1
  description = "Number of instances to create"
}

variable "ami_id" {
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