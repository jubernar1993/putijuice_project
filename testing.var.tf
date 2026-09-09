variable "testing_ami" {
  type    = string
  default = "ami-0af6d4b91f5fe3e8e"
}

output "s3_bucketlol" {
  description = "testing outputs"
  value       = aws_s3_bucket.puti_juice.bucket_region
}


variable "testing_variables" {
  type    = string
  default = "ami-0af6d4b91f5fe3e8e"
}