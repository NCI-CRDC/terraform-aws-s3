locals {
  stack = "${var.program}-${var.env}-${var.app}"
  level = terraform.workspace == "dev" || terraform.workspace == "qa" ? "nonprod" : "prod"
}