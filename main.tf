provider "aws" {
    region = "eu-north-1"
    profile = "default"
}

module "s3_bucket_weekly" {
  source = "./modules/terraform-aws-s3-bucket"

  bucket        = var.bucket_names.weekly

  tags = var.bucket_tags.weekly

  lifecycle_rule = var.bucket_lifecycle_rules.weekly

}

module "s3_bucket_daily" {
  source = "./modules/terraform-aws-s3-bucket"

  bucket        = var.bucket_names.daily

  tags = var.bucket_tags.daily

  lifecycle_rule = var.bucket_lifecycle_rules.daily

}

module "s3_bucket_hourly" {
  source = "./modules/terraform-aws-s3-bucket"

  bucket        = var.bucket_names.hourly

  tags = var.bucket_tags.hourly

  lifecycle_rule = var.bucket_lifecycle_rules.hourly

}