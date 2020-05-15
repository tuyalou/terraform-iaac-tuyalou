data "template_file" "init" {
  template = "${file("${path.module}/wordpress.sh")}"
}

  


resource "aws_launch_template" "example" {
  name_prefix   = "example"
  image_id      = "${data.aws_ami.image.id}"
  instance_type = "t2.micro"
  user_data = "${base64encode(data.template_file.init.rendered)}"
  vpc_security_group_ids = ["${aws_security_group.asg-sec-group.id}"]
}

resource "aws_autoscaling_group" "example" {
  name               = "ASG1"
  availability_zones = [
    "${var.region}a",
    "${var.region}b",
    "${var.region}c",
  ]

  desired_capacity = "${var.desired_capacity}"
  max_size         = "${var.max_size}"
  min_size         = "${var.min_size}"

  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = "${aws_launch_template.example.id}"
      }

      override {
        instance_type     = "t2.medium"
        weighted_capacity = "3"
      }

      override {
        instance_type     = "t2.large"
        weighted_capacity = "2"
      }
    }
  }
}