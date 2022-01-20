provider "aws" {
  access_key = ""
  secret_key = ""
  region     = ""
}

resource "aws_instance" "example" {
  ami           = "ami-0f2e255ec956ade7f"
  instance_type = "t2.micro"
}

