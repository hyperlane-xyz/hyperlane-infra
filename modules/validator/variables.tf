variable "validator_count" {
  description = "The number of resources to create"
  type        = number
}

variable "oidc_id" {
  description = "The ID of the OIDC"
  type        = string
}

variable "account_id" {
  description = "The ARN of the root account"
  type        = string
}

variable "region" {
  description = "The AWS region to deploy to"
  type        = string
}
