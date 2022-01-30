resource "aws_security_group" "example" {
  name = "example" # can use expressions here

  dynamic "ingress" {
    for_each = var.ports
    content {
      from_port   = ingress.key       #will assign key
      to_port     = ingress.key
      cidr_blocks = ingress.value     #will assign value
      protocol    = "tcp"
    }
  }
}
