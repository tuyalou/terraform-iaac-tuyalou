resource "aws_ebs_volume" "ebs-volume-1" {
  availability_zone = "us-east-1a"
  size              = 100
  volume_size = 100
  volume_type = "st1"
}