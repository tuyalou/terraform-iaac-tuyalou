resource "aws_iam_user" "tim" {
   name = "Tubes"
   path = "/"
}

resource "aws_iam_group" "developers3" {
    name = "developers3"
    path = "/"
}

resource "aws_iam_group_membership" "developers_team" {
  name = "developers-group-membership"
  users = [
    "${aws_iam_user.Tubes.name}"
  ]
  group = "${aws_iam_group.developers3.name}"
}