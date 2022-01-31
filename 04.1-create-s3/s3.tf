resource "aws_s3_bucket" "bucket" {
    bucket = "nr-terraform-state-backend"
    versioning {
        enabled = true                             #enable versioning so that every revision of the state file is stored.
    }
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"                 # encrypt the contents of the bucket as the state file saves the infrastructure information
            }
        }
    }
    object_lock_configuration {
        object_lock_enabled = "Enabled"                  #enable the lock of objects in order to avoid deletion or overwriting.
    }
    tags = {
        Name = "S3 Remote Terraform State Store"
    }
}
