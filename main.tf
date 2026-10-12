resource "snowflake_account_parameter" "account_parameters" {
  for_each = var.account_parameters

  key   = each.value.key
  value = each.value.value

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

