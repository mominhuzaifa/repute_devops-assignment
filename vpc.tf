provider "aws" {
  region = "ap-south-1"  # Replace with your desired region
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "my-eks-vpc"
  }
}
