output "ec2_instance_id" {
  description = "ID of the EC2 web server."
  value       = aws_instance.lamp_Stack.id
}

output "ec2_public_ip" {
  description = "Public IPv4 address of the EC2 web server."
  value       = aws_instance.lamp_Stack.public_ip
}

output "s3_bucket_name" {
  description = "Name of the S3 website bucket."
  value       = aws_s3_bucket.puti_juice.bucket
}

output "website_url" {
  description = "URL of the S3 static website."
  value       = "http://${aws_s3_bucket_website_configuration.puti_juice.website_endpoint}"
}






