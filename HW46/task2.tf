  provider "aws" {
    region                  = "eu-west-2"
    shared_credentials_file = "$HOME/.aws/credentials"
    profile                 = "default"
}

  resource "aws_instance" "hw46_instance" {
    ami = "ami-0194c3e07668a7e36"
    instance_type = var.instance_type

    tags = {
      Name = "HW46_Instance"
    }

}

  resource "aws_vpc" "hw46-vpc" {
    cidr_block = "10.40.0.0/16"

    tags = {
      Name = "HW46_VPC"
    }
}
