variable "chains" {
  description = "The names of the chains for which to create relayers."
  type        = list(string)
}

variable "account_id" {
  description = "The ARN of the root account"
  type        = string
}

variable "oidc_id" {
  description = "The ID of the OIDC"
  type        = string
}

variable "region" {
  description = "The AWS region to deploy to"
  type        = string
}
