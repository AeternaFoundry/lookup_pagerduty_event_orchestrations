output "event_orchestrations_lookup_id" {
  description = "Map of id values across all event_orchestrations_lookup, keyed the same as var.event_orchestrations_lookup except keys with no id are omitted"
  value       = { for k, v in data.pagerduty_event_orchestrations.event_orchestrations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "event_orchestrations_lookup_event_orchestrations" {
  description = "Map of event_orchestrations values across all event_orchestrations_lookup, keyed the same as var.event_orchestrations_lookup except keys with no event_orchestrations are omitted"
  value       = { for k, v in data.pagerduty_event_orchestrations.event_orchestrations_lookup : k => v.event_orchestrations if v.event_orchestrations != null && length(v.event_orchestrations) > 0 }
}
output "event_orchestrations_lookup_name_filter" {
  description = "Map of name_filter values across all event_orchestrations_lookup, keyed the same as var.event_orchestrations_lookup except keys with no name_filter are omitted"
  value       = { for k, v in data.pagerduty_event_orchestrations.event_orchestrations_lookup : k => v.name_filter if v.name_filter != null && length(v.name_filter) > 0 }
}

