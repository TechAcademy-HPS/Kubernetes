resource "aws_s3_bucket" "yoshithac8-s3" {
  bucket = "yoshithac89"
  acl    = "private"

  tags = {
    Name        = "Yoshithabucket"
    Environment = "feature"
  }
}
