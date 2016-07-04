provider "aws" { }

module "global" {
  source = "../module-aws-global"

  bucket_remote_state = "${var.bucket_remote_state}"
  az_names = "${var.az_names}"
  aws_account_id = "${var.aws_account_id}"
  aws_region = "${var.aws_region}"
  vpc_domain = "${var.vpc_domain}"
}

output "aws_account_id" {
  value = "${module.global.aws_account_id}"
}

output "aws_region" {
  value = "${module.global.aws_region}"
}

output "bucket_remote_state" {
  value = "${module.global.bucket_remote_state}"
}

output "az_count" {
  value = "${module.global.az_count}"
}

output "az_names" {
  value = "${module.global.az_names}"
}

output "vpc_domain" {
  value = "${module.global.vpc_domain}"
}

output "zone_id" {
  value = "${module.global.zone_id}"
}

output "zone_name_servers" {
  value = "${module.global.zone_name_servers}"
}
