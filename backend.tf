terraform {
    backend "s3" {
        bucket = "jadate-152074408701-tfstates"
        key    = "sprint1/week2/trainingz-terraform/terraform.tfstates"
        dynamodb_table = "terraform-locked"
    }
}