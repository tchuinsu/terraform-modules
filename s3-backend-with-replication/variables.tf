variable "aws_region_main" {
  type    = string
  default = "us-east-1"
}

variable "aws_region_backup" {
  type    = string
  default = "us-east-2"
}

variable "common_tags" {
  type = map(any)
  default = {
    "id"             = "1986"
    "owner"          = "DevOps Coubis Learning"
    "teams"          = "DEL"
    "environment"    = "dev"
    "project"        = "beta"
    "create_by"      = "Terraform"
    "cloud_provider" = "aws"
  }
}
