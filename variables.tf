variable "event_orchestrations_lookup" {
  description = <<EOT
Map of event_orchestrations_lookup, attributes below
Required:
    - name_filter
EOT

  type = map(object({
    name_filter = string
  }))
}

