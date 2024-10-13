resource "aws_s3_bucket" "S3Bucket" {
  bucket = "terraform20241014"
}
resource "aws_s3_object" "test_document" {
  bucket  = aws_s3_bucket.S3Bucket.id
  key     = "readme"
  content = "./readme"
}

/*terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.71.0"
    }
  }
}*/


/*terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.60.0 ,<= 5.65.0"
    }
  }
}*/

// the pessimistic constraint operator (~>) is used in version constraints to specify a 
//"pessimistic" or cautious range of acceptable versions for a provider or module. 
//It ensures that the version can be updated automatically within a specified range,
// but not beyond a certain major or minor version boundary.


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.63"

    }
  }
}
