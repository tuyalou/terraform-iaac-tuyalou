resource "aws_s3_bucket" "test" {
  bucket = "${var.bucket}"
  acl    = "private"

}
variable "bucket" {}
variable "region" {}