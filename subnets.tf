resource "aws_subnet" "public_subnet" {
  count = 2

  vpc_id = aws_vpc.my_vpc.id
  cidr_block = cidrsubnet(aws_vpc.my_vpc.cidr_block, 8, count.index)
  availability_zone = element(var.availability_zones, count.index)

  tags = {
    Name = "public-subnet-${count.index + 1}"
  }
}

# ... Create private subnets, internet gateway, NAT gateway, security groups, etc.
