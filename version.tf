terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.17.0"
    }

  }
}

provider "aws" {
  region  = var.my_region
  profile = var.profile
}