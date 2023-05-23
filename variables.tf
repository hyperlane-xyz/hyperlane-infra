variable "validator_count" {
  description = "The number of resources to create"
  type        = number
  default     = 3
}

variable "region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "chains" {
  description = "List of chains the relayers will be deployed to"
  type        = list(string)
  default     = ["sepolia", "fuji", "bsc-testnet", "optimism-goerli", "godwoken-testnet", "khalani-testnet", "mumbai", "arbitrum-goerli"]
}

variable "account_id" {
  description = "The AWS Account ID"
  type        = string
  default     = "arn:aws:iam::803035318642"
}

variable "oidc_id" {
  description = "The ID of the OIDC"
  type        = string
  default     = "32803539C78C654C14D84BD9DDB105D9"
}
