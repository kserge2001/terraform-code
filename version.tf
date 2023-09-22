terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.5.0"
      version = "4.61.0"
    }

  }
}

provider "aws" {
  region  = "us-east-1"
  profile = var.profile
}