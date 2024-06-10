variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "subnet_cidrs" {
  type        = list(string)
  description = "List of CIDR blocks for the subnets"
}
