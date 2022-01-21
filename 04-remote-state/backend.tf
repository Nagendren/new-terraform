terraform {
  backend "s3" {
    bucket = "your-bucket-name"
    key    = "your-file-name"
  }
}
