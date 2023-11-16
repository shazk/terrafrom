// This is tf file to create a elastic-ip with output. 

provider "aws" {
  region     = "us-east-1"
  access_key = "XXX"
  secret_key = "xx"
}
resource "aws_eip" "elastic" {
  domain   = "vpc"
}

output "my-pub-ip" {
  value = aws_eip.elastic.public_ip

}
