variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  type    = string
  default = "ap-south-1"
}
variable "project_tags" {
  type          = map(string)
  default       = {
    Component   = "web server"
    Environment = "dev"
  }
}
