resource "aws_s3_bucket" "puti_juice" {
  bucket        = "putijuiceserver2026testing"
  force_destroy = true

  tags = {
    Name        = "putijuice_testing"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_website_configuration" "puti_juice" {
  bucket = aws_s3_bucket.puti_juice.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

}
resource "aws_s3_bucket_public_access_block" "putijuice_testing" {
  bucket = aws_s3_bucket.puti_juice.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "website" {
  bucket = aws_s3_bucket.puti_juice.id

  depends_on = [
    aws_s3_bucket_public_access_block.putijuice_testing
  ]

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Sid       = "PublicRead"
      Effect    = "Allow"
      Principal = "*"
      Action    = "s3:GetObject"
      Resource  = "${aws_s3_bucket.puti_juice.arn}/*"
    }]
  })
}
