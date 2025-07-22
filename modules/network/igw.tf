resource "aws_internet_gateway" "eks_igw" {
  vpc_id = aws_vpc.vpc-eks.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-igw"
    }
  )
}

resource "aws_route_table" "eks_public_route_table" {
  vpc_id = aws_vpc.vpc-eks.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eks_igw.id
  }
  /* route to IPv6
  route {
    ipv6_cidr_block        = "::/0"
    egress_only_gateway_id = aws_egress_only_internet_gateway.eks_igw.id
  }
*/
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-Public-route-table"
    }
  )
}