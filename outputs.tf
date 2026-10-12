output "account_parameters_id" {
  description = "Map of id values across all account_parameters, keyed the same as var.account_parameters except keys with no id are omitted"
  value       = { for k, v in snowflake_account_parameter.account_parameters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "account_parameters_key" {
  description = "Map of key values across all account_parameters, keyed the same as var.account_parameters except keys with no key are omitted"
  value       = { for k, v in snowflake_account_parameter.account_parameters : k => v.key if v.key != null && length(v.key) > 0 }
}
output "account_parameters_value" {
  description = "Map of value values across all account_parameters, keyed the same as var.account_parameters except keys with no value are omitted"
  value       = { for k, v in snowflake_account_parameter.account_parameters : k => v.value if v.value != null && length(v.value) > 0 }
}

