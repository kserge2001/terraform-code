terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }

  }
}
#changed the version of the aws provider.

provider "aws" {
  region  = var.my_region
  profile = var.profile
}