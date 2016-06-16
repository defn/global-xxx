provider "aws" { }

module "global" {
  source = "../module-aws-global"

  bucket_remote_state = "${var.bucket_remote_state}"
  az_names = "${var.az_names}"
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
