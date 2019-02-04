resource "aws_s3_bucket_object" "object" {
  bucket = "terra-citb34"
  key    = "dev-db-details"
  source = ""
  etag   = "${md5(file("path/to/file"))}"
}