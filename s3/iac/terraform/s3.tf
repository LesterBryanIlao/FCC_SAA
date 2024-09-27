resource "aws_s3_bucket" "my-s3-bucket" {
  bucket = "terraform-bucket-ilale"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}