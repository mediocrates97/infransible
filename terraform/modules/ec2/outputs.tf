output "instance_public_ip" {
  value       = aws_instance.this.public_ip
  description = "Public IP address of the EC2 instance"
}

output "instance_public_dns" {
  value       = aws_instance.this.public_dns
  description = "Public DNS name of the EC2 instance"
}
