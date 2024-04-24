provider "aws" {
  region     = "us-east-1"
}
resource "aws_instance" "ec2terrafrom" {
  ami           = "ami-0a1179631ec8933d7"
  instance_type = "t2.micro"
  key_name = "1-click"
  security_groups = ["Tomcat-Sg"]
  count = 1
  tags ={
  Name = "my_terraform_SERVER"
  }
}
