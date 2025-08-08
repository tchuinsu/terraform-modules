#terraform {
#  backend "s3" {
#    bucket         = "19001-dev-beta-tf-state"
#    key            = "aws-terraform/vpc-02-duplica/terraform.tfstate"
#    region         = "us-east-1"
#    dynamodb_table = "19001-dev-beta-tf-state-lock"
#  }
#}

#terraform {
#   backend "s3" {
#     bucket         = "19001-dev-beta-tf-state-backup"
#     key            = "aws-terraform/vpc-02-dupluca-backup/terraform.tfstate"
#     region         = "us-east-2"
#     dynamodb_table = "19001-dev-beta-tf-state-lock"
# }
#}