output "relayer_info" {
  description = "The ARNs of the Relayers IAM Roles, and their corresponding KMS Keys and Aliases"
  value       = module.relayers.relayer_info
}

output "validator_info" {
  description = "Information about the Validators, including their IAM roles, KMS keys, and S3 buckets"
  value       = module.validators.validator_info
}






