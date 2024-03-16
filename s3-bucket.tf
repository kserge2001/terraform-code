resource "aws_s3_bucket" "bucket" {
  bucket = "ivanotest"  # Specify a globally unique bucket name


}

# Configure Terraform backend to use S3 you can create file call backend.tf
terraform {
  backend "s3" {
    bucket         = "ivanotest"  # Specify the name of your S3 bucket
    key            = "state/terraform-code"         # Specify the name of the state file
    region         = "us-east-1"                 # Specify the AWS region of the bucket
    encrypt        = true                        # Optionally, enable encryption for the state file
  
  }
}