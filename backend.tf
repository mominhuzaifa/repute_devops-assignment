terraform {
  backend "s3" {
    bucket = "eks-vpc-tf-backend-s3"
    key = "global/s3/terraform.tfstate"
    region = "ap-south-1"
  }
}