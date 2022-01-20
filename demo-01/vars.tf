variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "ap-south-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    ap-south-1 = "ami-0f2e255ec956ade7f"
    ap-east-1 = "ami-038ff3475cbb62351"
  }
}
