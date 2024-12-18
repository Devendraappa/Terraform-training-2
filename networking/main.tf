terraform {
  backend "s3" {
    bucket         = "terraform-bucket-789"
    key            = "networking/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "test"
  }
}
