output "vpc_id" {
  value       = aws_vpc.this.id
  description = "ID of the created VPC"
}

output "subnet_ids" {
  value       = aws_subnet.this[*].id
  description = "List of subnet IDs"
}
