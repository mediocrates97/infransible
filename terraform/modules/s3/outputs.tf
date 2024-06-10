output "bucket_name" {
  value       = aws_s3_bucket.this.id
  description = "Name of the created S3 bucket"
}
