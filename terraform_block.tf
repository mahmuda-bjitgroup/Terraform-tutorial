terraform {
  required_version = "~> 1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.12.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }

  }
}


provider "aws" {
  profile = "default"
  # region  = "us-east-1"
  region = var.aws_region
}

# provider "aws" {
#   profile = "default"
#   region  = "us-east-2"
#   alias = "aws-east-2"
# }
