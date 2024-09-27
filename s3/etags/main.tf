terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.68.0"
    }
  }
}

provider "aws" {
  # Configuration options
}


resource "aws_s3_bucket" "default" {
}

resource "aws_s3_object" "object" {
    bucket = aws_s3_bucket.default.id
    key = "myfile.txt"
    source = "./myfile.txt"

}