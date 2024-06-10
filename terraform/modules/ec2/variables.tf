variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "ami" {
  type        = string
  description = "AMI for EC2 instance"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs"
}

variable "key_name" {
  type        = string
  description = "Key pair name for SSH access"
}

variable "ssh_allowed_cidrs" {
  type        = list(string)
  description = "List of CIDR blocks allowed for SSH access"
}
