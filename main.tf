data "pagerduty_event_orchestrations" "event_orchestrations_lookup" {
  for_each = var.event_orchestrations_lookup

  name_filter = each.value.name_filter
}

