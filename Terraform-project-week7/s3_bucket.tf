terraform {
  backend "s3" {
    bucket                  = "edwige-bucket1"
    key                     = "terraform-splunk state file"
    region                  = "us-east-1"
    shared_credentials_file = "~/.aws/credentials"
    encrypt                 = true
  }
}