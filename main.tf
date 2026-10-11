data "confluent_byok_key" "byok_key_lookup" {
  for_each = var.byok_key_lookup

  id = each.value.id
}

