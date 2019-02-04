resource "aws_s3_bucket_object" "object" {
  bucket = "terra-citb34"
  key    = "dev-db-detai"
  source = "path/to/file"
  etag   = "${md5(file("path/to/file"))}"
}