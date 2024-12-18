terraform {
  backend "s3" {
    bucket         = "terraform-bucket-789"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "test"
  }
}
