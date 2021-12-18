resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  acl = "private"

  tags = local.common_tags
}

resource "aws_s3_bucket_object" "this" {

  bucket = aws_s3_bucket.this.bucket

  key = "config/${local.sample_file_path}"

  source = local.sample_file_path

  etag = filemd5(local.sample_file_path)

  content_type = "application/json"

}
