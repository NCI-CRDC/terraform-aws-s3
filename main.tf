resource "aws_s3_bucket" "this" {
  bucket        = "${local.stack}-${var.bucket-suffix}"
  force_destroy = var.force_destroy
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = var.versioning
  }
}

resource "aws_s3_bucket_logging" "this" {
  count = var.enable_logging ? 1 : 0

  bucket        = var.enable_versioning ? aws_s3_bucket.this.id : null
  target_bucket = var.enable_versioning ? var.log_bucket : null
  target_prefix = var.enable_versioning ? var.log_prefix : null
}
