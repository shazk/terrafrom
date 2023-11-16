# This TF file to create a basic ec2 instance.

provider "aws" {
  region     = "us-east-1"
  access_key = "xxxxx"
  secret_key = "xxxxx"
}

resource "aws_instance" "myec2" {
  ami = "ami-id"
  instance_type = "t2.micro"

   tags = {
    Name = "myec2-instance"
   }

}
