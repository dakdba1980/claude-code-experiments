resource "aws_s3_bucket" "example" {
    bucket = "my-tf-test-bucket"

    tags = {
        Name        = "My bucket"
        Environment = "Dev"
    }
}

resource "aws_s3_bucket_versioning" "example" {
    bucket = aws_s3_bucket.example.id
    versioning_configuration {
        status = "Enabled"
    }
}

# str1 = "Hello"
# str2 = "World"
# result = str1 + " " + str2
# print(result)