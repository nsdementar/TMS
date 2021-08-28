  provider "aws" {
    region                  = var.region
    shared_credentials_file = "$HOME/.aws/credentials"
    profile                 = "default"
    
}
 
  resource "aws_s3_bucket" "hw46-bucket-of-tf" {
    bucket = "hw46-bucket-of-tf"
    acl    = "private"
    
}
