terraform {
  backend "s3" {
    bucket = "tuba-task"
    key    = "path/to/my/key"
    #dynamodb_table = 
    region = "us-east-1"
  }
}
