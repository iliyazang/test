resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = "main"
  }
}

#pull available availability zones.
data "aws_availability_zones" "available" {
  state = "available"
}

#subnets
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = cidrsubnet(var.vpc_cidr, var.subnet_cidr_bits, count.index + 10)
  availability_zone       = data.aws_availability_zones.available.names
  map_public_ip_on_launch = true

  tags = {
    Name = "PublicSubnet-${format("%02d", count.index + 1)}"
  }
}