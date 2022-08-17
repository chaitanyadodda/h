

# Create a VPC
resource "aws_vpc" "vpc" {
  cidr_block = element(var.vpc-cidr-value, count.index)
  count = 3
  enable_dns_support = true
  enable_dns_hostnames  = true
  tags = {
    Name = "dev-${count.index+1}"
  }
}

/*
resource "aws_subnet" "vpc-subnet" {
  vpc_id     = aws_vpc.vpc.id[count.index]
  count =3
  cidr_block = element(var.subnet-cidr-value, count.index)
  tags = {
    Name = "Main"
  }
}
*/



