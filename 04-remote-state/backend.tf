terraform {
  backend "s3" {
    bucket         = "nr-terraform-state-backend"
    key            = "deploy"
    dynamodb_table = "nr-terraform-state-table"
  }
}
