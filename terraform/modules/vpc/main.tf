resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr_block

  enable_dns_hostnames = true
  enable_dns_support   = true
}

resource "aws_subnet" "this" {
  count                   = length(var.subnet_cidrs)
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.subnet_cidrs[count.index]
  map_public_ip_on_launch = true
}
