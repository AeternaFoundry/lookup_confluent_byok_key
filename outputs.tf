output "byok_key_lookup_aws" {
  description = "Map of aws values across all byok_key_lookup, keyed the same as var.byok_key_lookup except keys with no aws are omitted"
  value       = { for k, v in data.confluent_byok_key.byok_key_lookup : k => v.aws if v.aws != null && length(v.aws) > 0 }
}
output "byok_key_lookup_azure" {
  description = "Map of azure values across all byok_key_lookup, keyed the same as var.byok_key_lookup except keys with no azure are omitted"
  value       = { for k, v in data.confluent_byok_key.byok_key_lookup : k => v.azure if v.azure != null && length(v.azure) > 0 }
}
output "byok_key_lookup_gcp" {
  description = "Map of gcp values across all byok_key_lookup, keyed the same as var.byok_key_lookup except keys with no gcp are omitted"
  value       = { for k, v in data.confluent_byok_key.byok_key_lookup : k => v.gcp if v.gcp != null && length(v.gcp) > 0 }
}
output "byok_key_lookup_id" {
  description = "Map of id values across all byok_key_lookup, keyed the same as var.byok_key_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_byok_key.byok_key_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}

