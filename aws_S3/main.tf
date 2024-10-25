resource "aws_s3_bucket" "terraform20241019" {
  bucket = "terraform20241019"

}

resource "aws_s3_object" "Documents" {
  bucket = aws_s3_bucket.terraform20241019.id
  source = "../readme"
  key    = "Supporting Documents"

}
