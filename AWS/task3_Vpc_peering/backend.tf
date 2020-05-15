terraform {
  backend "s3" {
    bucket = "tuba-task"
    key    = "path/to/my/key"
    #dynamodb_table = 
    region = "us-east-1"
  }
}

###################   ACCEPTER SIDE   ######################

# terraform {
#   backend "s3" {
#     bucket = "tuba-new"
#     key    = "path/to/my/key"
#     #dynamodb_table = 
#     region = "us-east-2"
#   }
# }