provider "aws" {
    region = "eu-north-1"
    profile = "default"
}

module "mdmbutterflu_buckets" {
  source = "./modules/terraform-aws-s3-bucket"

  for_each = var.project

  #bucket        = var.bucket_names.weekly

  #tags = var.bucket_tags.weekly

  #lifecycle_rule = var.bucket_lifecycle_rules.weekly

}