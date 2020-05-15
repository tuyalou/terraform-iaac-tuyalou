resource "aws_s3_bucket" "b" {
  bucket = "${var.bucket}"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}