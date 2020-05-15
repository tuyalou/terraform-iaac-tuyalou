module "bucket1" {
    source = "./module"
    region = "us-west-2"
    bucket = "tuba-bucket-oregon"
}
module "bucket2" {
    source = "./module"
    region = "us-east-1"
    bucket = "tuba-bucket-virginia"
}
module "bucket3" {
    source = "./module"
    region = "us-east-2"
    bucket = "tuba-bucket-ohio"
}
module "bucket4" {
    source = "./module"
    region = "us-west-1"
    bucket = "tuba-bucket-california"
}
# module "bucket5" {
#     source = "./module"
#     region = "ap-east-1"
#     bucket = "tuba-bucket-hongkong"
# }
module "bucket6" {
    source = "./module"
    region = "ap-south-1"
    bucket = "tuba-bucket-mumbai"
}
module "bucket7" {
    source = "./module"
    region = "ap-northeast-2"
    bucket = "tuba-bucket-seoul"
}
module "bucket8" {
    source = "./module"
    region = "ap-southeast-1"
    bucket = "tuba-bucket-singapore"
}
module "bucket9" {
    source = "./module"
    region = "ap-southeast-2"
    bucket = "tuba-bucket-sydney"
}
module "bucket10" {
    source = "./module"
    region = "ap-northeast-1"
    bucket = "tuba-bucket-tokyo"
}
module "bucket11" {
    source = "./module"
    region = "ca-central-1"
    bucket = "tuba-bucket-central"
}
module "bucket12" {
    source = "./module"
    region = "eu-central-1"
    bucket = "tuba-bucket-franfurt"
}
module "bucket13" {
    source = "./module"
    region = "eu-west-1"
    bucket = "tuba-bucket-ireland"
}
module "bucket14" {
    source = "./module"
    region = "eu-west-2"
    bucket = "tuba-bucket-london"
}
# module "bucket15" {
#     source = "./module"
#     region = "eu-south-1"
#     bucket = "tuba-bucket-milan"
# }
module "bucket16" {
    source = "./module"
    region = "eu-west-3"
    bucket = "tuba-bucket-paris"
}
module "bucket17" {
    source = "./module"
    region = "eu-north-1"
    bucket = "tuba-bucket-stockholm"
}
# module "bucket18" {
#     source = "./module"
#     region = "me-south-1"
#     bucket = "tuba-bucket-bahrain"
# }
module "bucket19" {
    source = "./module"
    region = "sa-east-1"
    bucket = "tuba-bucket-saopaulo"
}
terraform { 
  required_version = "0.11.14"
  backend "s3" { 
  bucket = "tuba-task" 
  key = "path/to/my/key" 
  region = "us-east-1" 
} 
} 