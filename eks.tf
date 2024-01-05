resource "aws_eks_cluster" "my_cluster" {
  name = "my-eks-cluster"
  version = "1.28"
  role_arn = "arn:aws:iam::150387322390:role/EKS-Role"

  vpc_config {
    security_group_ids = ["sg-0428520a191a335ed", "sg-0428520a191a335ed", "sg-0428520a191a335ed"]
    subnet_ids = aws_subnet.public_subnet[*].id
  }
}
