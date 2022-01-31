terraform {
  backend "s3" {
    bucket = "your-bucket-name"
    key    = "your-file-name"
    dynamodb_table = "table-name"
  }
}
