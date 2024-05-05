provider "aws" {
  access_key = ""
  secret_key = ""
  region = "us-west-1"
}
resource "aws_instance" "k8-M" {
  ami = "ami-036cafe742923b3d9"
  instance_type = "t2.large"
  key_name = "AksithApril24"
  tags = {
    Name = "Kmaster"
  }
}

resource "aws_instance" "k8-S1" {
  ami = "ami-036cafe742923b3d9"
  instance_type = "t2.medium"
  key_name = "AksithApril24"
  tags = {
    Name = "Kslave"
  }
}
