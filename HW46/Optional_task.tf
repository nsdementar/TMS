  provider "aws" {
    region                  = "eu-west-2"
    shared_credentials_file = "$HOME/.aws/credentials"
    profile                 = "default"
}

  resource "aws_instance" "hw46_instance" {
    ami = "ami-0194c3e07668a7e36"
    instance_type = "t2.micro"
    user_data = file("upgrade_packages.sh")

    tags = {
      Name = "HW46_Instance"
    }
}
