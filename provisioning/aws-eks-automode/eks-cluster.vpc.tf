resource "aws_vpc" "eks-cluster" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "${var.project_unique_id}"
  }
}

resource "aws_subnet" "eks-cluster-1" {
  vpc_id            = aws_vpc.eks-cluster.id
  availability_zone = "${var.aws_default_region}a"
  cidr_block        = "10.0.1.0/24"
  tags = {
    "Name" = "${var.project_unique_id}-a"
  }
}

resource "aws_subnet" "eks-cluster-2" {
  vpc_id            = aws_vpc.eks-cluster.id
  availability_zone = "${var.aws_default_region}b"
  cidr_block        = "10.0.2.0/24"
  tags = {
    "Name" = "${var.project_unique_id}-b"
  }
}

resource "aws_subnet" "eks-cluster-3" {
  vpc_id            = aws_vpc.eks-cluster.id
  availability_zone = "${var.aws_default_region}c"
  cidr_block        = "10.0.3.0/24"
  tags = {
    "Name" = "${var.project_unique_id}-c"
  }
}
