# Terraform AWS Module Template

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/8e7cd989479b452aba3400f3c1cb74a3)](https://app.codacy.com/gh/NCI-CTOS/terraform-aws-s3?utm_source=github.com&utm_medium=referral&utm_content=NCI-CTOS/terraform-aws-s3&utm_campaign=Badge_Grade_Settings)

A repository template for creating reusable terraform modules to support infrastructure as code capabilities for workloads running on AWS. 

# Overview

# Usage 

<!-- BEGIN_TF_DOCS -->
# Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

# Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

# Modules

No modules.

# Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_logging.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging) | resource |
| [aws_s3_bucket_public_access_block.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_versioning.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |

# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app"></a> [app](#input\_app) | the name of the application expressed as an acronym | `string` | n/a | yes |
| <a name="input_bucket_suffix"></a> [bucket\_suffix](#input\_bucket\_suffix) | the suffix of the bucket name that follows the name of the stack | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | the target tier ('dev', 'qa', 'stage', or 'prod'.) | `string` | n/a | yes |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | whether to destroy all objects in the bucket prior to deleting bucket | `bool` | `false` | no |
| <a name="input_log_bucket"></a> [log\_bucket](#input\_log\_bucket) | the destination log bucket name or id | `string` | n/a | yes |
| <a name="input_log_enabled"></a> [log\_enabled](#input\_log\_enabled) | enable s3 server-side logging | `bool` | `true` | no |
| <a name="input_log_prefix"></a> [log\_prefix](#input\_log\_prefix) | the prefix for the log directories - if not provided, defaults to root s3 directory | `string` | `null` | no |
| <a name="input_program"></a> [program](#input\_program) | the program associated with the application | `string` | n/a | yes |
| <a name="input_versioning"></a> [versioning](#input\_versioning) | enable object versioning - either 'Enabled' or 'Disabled' | `string` | `"Enabled"` | no |

# Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_bucket"></a> [bucket](#output\_bucket) | n/a |
| <a name="output_bucket_domain_name"></a> [bucket\_domain\_name](#output\_bucket\_domain\_name) | n/a |
| <a name="output_bucket_regional_domain_name"></a> [bucket\_regional\_domain\_name](#output\_bucket\_regional\_domain\_name) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
<!-- END_TF_DOCS -->
