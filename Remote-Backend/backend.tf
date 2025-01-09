terraform {
  backend "s3" {
    bucket         = "remote-storage-demo-1"
    key            = "yogi/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}