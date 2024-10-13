terraform {
  backend "s3" {
    bucket         = "terraform20241010"
    region         = "us-east-1"
    key            = "terraform.tfstate"
    dynamodb_table = "aws_dynamodb_table.project_sapphire_inventory.name"
  }
}
