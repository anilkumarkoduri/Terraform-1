resource "aws_s3_bucket_object" "object" {
  bucket = "terra-citb34"
  key    = "new_object_key"
  source = "path/to/file"
  etag   = "${md5(file("path/to/file"))}"
}