variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-0b0ea68c435eb488d"
    us-west-1 = "ami-0454207e5367abf01"
  }
}

variable "vpc_name" {
  default = "your vpc name"
}
variable "subnet1_name" {
  default = "your subnet name"
}
