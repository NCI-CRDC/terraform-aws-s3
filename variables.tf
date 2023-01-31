variable "app" {
  type        = string
  description = "the name of the application expressed as an acronym"
  sensitive   = false
}

variable "env" {
  type        = string
  description = "the target tier ('dev', 'qa', 'stage', or 'prod'.)"
  sensitive   = false

  validation {
    condition     = contains(["dev", "qa", "stage", "prod", "nonprod"], var.env)
    error_message = "valid values for env are 'dev', 'qa', 'stage', 'prod', and 'nonprod'"
  }
}

variable "program" {
  type        = string
  description = "the program associated with the application"
  sensitive   = false

  validation {
    condition     = contains(["crdc", "ccdi", "ctos"], var.program)
    error_message = "valid values for program are 'crdc', 'ccdi', and 'ctos'"
  }
}

variable "bucket_suffix" {
  type        = string
  description = "the suffix of the bucket name that follows the name of the stack"
}

variable "force_destroy" {
  type        = bool
  description = "whether to destroy all objects in the bucket prior to deleting bucket"
  default     = false
}

variable "versioning" {
  type        = string
  description = "enable object versioning - either 'Enabled' or 'Disabled'"
  default     = "Enabled"
}