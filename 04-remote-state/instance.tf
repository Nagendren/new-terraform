data "aws_vpc" "vpc" {                                 #not used in this example
  filter {
    name   = "tag:Name"
    values = ["${var.vpc_name}"]
  }
}

data "aws_subnet" "public_subnet1" {        #if you dont want to launch your instance in default subnet, you can pull the subnet id and use in the code.
  filter {
    name   = "tag:Name"
    values = ["${var.subnet1_name}"]
  }
}
resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  subnet_id     = "${data.aws_subnet.public_subnet1.id}"
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.private_ip} >> private_ips.txt"
  }
}

output "public_ip" {

  value = aws_instance.example.public_ip
}
