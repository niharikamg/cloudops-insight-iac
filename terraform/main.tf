# Generate a random suffix for unique bucket names
resource "random_pet" "suffix" {
  length = 2
}

# Create a simple S3 bucket
resource "aws_s3_bucket" "test_bucket" {
  bucket        = "cloudops-insight-test-${random_pet.suffix.id}"
  force_destroy = true

  tags = {
    Name        = "cloudops-test-bucket"
    Environment = "Development"
  }
}
