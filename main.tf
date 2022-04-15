resource "aws_s3_bucket" "myfirstbucket" {
  bucket = "harsh041220221124245"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


resource "aws_s3_bucket_acl" "access_policy" {
  bucket = aws_s3_bucket.myfirstbucket.id
  acl    = "private"
}

