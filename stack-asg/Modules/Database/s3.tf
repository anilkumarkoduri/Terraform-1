resource "aws_s3_bucket_object" "object" {
  bucket = "terra-citb34"
  key    = "DB-Details/dev-db-details"
  source = "dev-db-details"
  #etag   = "${md5(file("path/to/file"))}"
}

resource "null_resource" "pwd-help" {

  provisioner "local-exec" {
    command = <<EOF
    pwd
    EOF
  }
}