terraform {
  backend "s3" {
    bucket         = "terraform-bucket-789"
    key            = "storage/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "test"
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "storage" {
  bucket = "my-storage-bucket124"
  tags = {
    Name = "storage-bucket"
  }
}
