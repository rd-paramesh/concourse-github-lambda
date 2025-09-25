# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------
variable "name_prefix" {
  description = "Prefix used for resource names."
  type        = string
}

variable "filename" {
  description = "Path to the handler zip-file."
  type        = string
  default     = null
}

variable "source_code_hash" {
  description = "Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3_key."
  type        = string
  default     = null
}

variable "s3_bucket" {
  description = "The bucket where the lambda function is uploaded."
  type        = string
  default     = null
}

variable "s3_key" {
  description = "The s3 key for the Lambda artifact."
  type        = string
  default     = null
}

variable "secrets_manager_prefix" {
  description = "Prefix used for secrets. The Lambda will be allowed to create and write secrets to any secret with this prefix."
  type        = string
  default     = "concourse"
}

variable "github_prefix" {
  description = "Prefix used for Github deploy key name."
  type        = string
  default     = "concourse"
}

variable "token_service_integration_id" {
  description = "Integration ID for the access token Github App."
  type        = string
}

variable "token_service_private_key" {
  description = "Private key for the access token Github App."
  type        = string
}

variable "key_service_integration_id" {
  description = "Integration ID for the deploy key Github App."
  type        = string
}

variable "key_service_private_key" {
  description = "Private key for the deploy key Github App."
  type        = string
}

variable "tags" {
  description = "A map of tags (key-value pairs) passed to resources."
  type        = map(string)
  default     = {}
}

variable "runtime" {
  description = "Lambda runtime environment"
  type        = string
  default     = "provided.al2023"
}

variable "handler" {
  description = "Lambda function entry point"
  type        = string
  default     = "bootstrap"
}

