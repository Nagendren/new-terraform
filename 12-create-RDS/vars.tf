variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "ap-south-1"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "AMIS" {
  type = map(string)
  default = {
    ap-south-1 = "ami-0f2e255ec956ade7f"
    ap-east-1  = "ami-038ff3475cbb62351"

  }
}
variable "RDS_PASSWORD" {
  default = "Random@123"
}

