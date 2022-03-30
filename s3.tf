resource "aws_s3_bucket" "my_new_bucket_a" {
    bucket = "jadate-152074408701-tfstates"

    lifecycle {
        prevent_destroy = true
    }

tags = {
    Name = "jadate-152074408701-tfstates"
    Environment = "Testing"
    }
}

resource "aws_s3_bucket_versioning" "version_my_bucket" {
    bucket = aws_s3_bucket.my_new_bucket_a.id

    versioning_configuration {
        status = "Enabled"
    }
}