terraform {
  required_version = "0.11.14"
  backend "s3" {
    bucket = "tuba-task"
    key    = "path/to/my/key"
              #  dynamodb_table  = "state_lock"
    region = "us-east-1"
  }
}
