resource "aws_s3_bucket" "bucket" {
    bucket = ""your-bucket-name
    versioning {
        enabled = true                        #enabled versioning so that every revision of the state file is stored
    }
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {           #encrypting the content of the bucket as the state file saves the infrastructure information
                sse_algorithm = "AES256"
            }
        }
    }
    object_lock_configuration {
        object_lock_enabled = "Enabled"         #enabled the lock of objects in order to avoid accidental deletion or overwriting.
    }
    tags = {
        Name = "S3 Remote Terraform State Store"
    }
}
