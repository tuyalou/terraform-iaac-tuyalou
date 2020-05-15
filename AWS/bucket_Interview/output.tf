output "ARN"{
    value = "${aws_s3_bucket.test.arn}" 
}
output "Bucket Domain Name"{
    value = "${aws_s3_bucket.test.bucket_domain_name}" 
}
output "Region"{
    value = "${aws_s3_bucket.test.region}"
} 
output "Hosted Zone Id"{
    value = "${aws_s3_bucket.test.hosted_zone_id}" 
}
output "ACL"{
    value = "${aws_s3_bucket.test.acl}" 
}