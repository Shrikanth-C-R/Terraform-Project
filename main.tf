provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}
resource "aws_instance" "ec2terrafrom" {
  ami           = "ami-033a1ebf088e56e81"
  instance_type = "t2.micro"
  key_name = "key"
  security_groups = ["Tomcat-Sg"]
  count = 1
  tags ={
  Name = "my_terraform_htppd"
  }
}
