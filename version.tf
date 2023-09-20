terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }

  }
}

provider "aws" {
  region  = us-east-1
  profile = var.profile
}
resource "aws_sns_topic" "topic" {
  name = "sns_qa" 
}
