output "event_orchestrations_lookup_id" {
  description = "Map of id values across all event_orchestrations_lookup, keyed the same as var.event_orchestrations_lookup"
  value       = { for k, v in data.pagerduty_event_orchestrations.event_orchestrations_lookup : k => v.id }
}
output "event_orchestrations_lookup_event_orchestrations" {
  description = "Map of event_orchestrations values across all event_orchestrations_lookup, keyed the same as var.event_orchestrations_lookup"
  value       = { for k, v in data.pagerduty_event_orchestrations.event_orchestrations_lookup : k => v.event_orchestrations }
}
output "event_orchestrations_lookup_name_filter" {
  description = "Map of name_filter values across all event_orchestrations_lookup, keyed the same as var.event_orchestrations_lookup"
  value       = { for k, v in data.pagerduty_event_orchestrations.event_orchestrations_lookup : k => v.name_filter }
}

