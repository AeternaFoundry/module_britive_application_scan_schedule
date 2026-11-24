resource "britive_application_scan_schedule" "application_scan_schedules" {
  for_each = var.application_scan_schedules

  application_id = each.value.application_id
  frequency_type = each.value.frequency_type
  name           = each.value.name
  day_of_month   = each.value.day_of_month
  day_of_week    = each.value.day_of_week
  hour_interval  = each.value.hour_interval
  org_scan       = each.value.org_scan
  start_time     = each.value.start_time

  dynamic "associations" {
    for_each = each.value.associations != null ? each.value.associations : []
    content {
      type  = associations.value.type
      value = associations.value.value
    }
  }
}

