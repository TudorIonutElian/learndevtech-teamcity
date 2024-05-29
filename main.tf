/**********************************************************
  # Configure the AWS Provider
  # source: https://registry.terraform.io/providers/hashicorp/
  # version: ~> 5.0
**********************************************************/

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

/*
* Configure the backend "s3" for storing the state file
* source: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
* version: ~> 3.0
*/
terraform {
  backend "s3" {
    bucket         = "learndevtech-teamcity"
    key            = "learndevtech-teamcity-terraform.tfstate"
    dynamodb_table = "learndevtech-teamcity-terraform-lock"
    region         = "eu-central-1"
  }
}

/**********************************************************
  # Add configuration to authorisation keys
  # Configure the AWS Provider  
**********************************************************/

provider "aws" {
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "default"
}
