output "this_key_arn" {
  description = "Deprecated: KMS key arn for Route53 DNSSEC CMK"
  value       = module.kms_key.key_arn
}

output "key_arn" {
  description = "KMS key arn for Route53 DNSSEC CMK"
  value       = module.kms_key.key_arn
}

output "ds_record" {
  description = "DS records for each zone"
  value       = { for k, v in aws_route53_key_signing_key.this : k => v.ds_record }
}