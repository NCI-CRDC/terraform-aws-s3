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

No providers.

# Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_this"></a> [this](#module\_this) | ../ | n/a |

# Resources

No resources.

# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app"></a> [app](#input\_app) | the name of the application expressed as an acronym | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | the target tier ('dev', 'qa', 'stage', or 'prod'.) | `string` | n/a | yes |
| <a name="input_program"></a> [program](#input\_program) | the program associated with the application | `string` | n/a | yes |

# Outputs

No outputs.
<!-- END_TF_DOCS -->
