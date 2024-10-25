data "aws_s3_bucket" "S3Bucket" {
  bucket = "49farmers-useraccessrights"
}

output "AWSS3Bucket" {
  value = data.aws_s3_bucket.S3Bucket.bucket_domain_name
}
