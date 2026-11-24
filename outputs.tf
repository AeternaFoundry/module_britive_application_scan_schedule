output "application_scan_schedules_id" {
  description = "Map of id values across all application_scan_schedules, keyed the same as var.application_scan_schedules"
  value       = { for k, v in britive_application_scan_schedule.application_scan_schedules : k => v.id }
}
output "application_scan_schedules_application_id" {
  description = "Map of application_id values across all application_scan_schedules, keyed the same as var.application_scan_schedules"
  value       = { for k, v in britive_application_scan_schedule.application_scan_schedules : k => v.application_id }
}
output "application_scan_schedules_associations" {
  description = "Map of associations values across all application_scan_schedules, keyed the same as var.application_scan_schedules"
  value       = { for k, v in britive_application_scan_schedule.application_scan_schedules : k => v.associations }
}
output "application_scan_schedules_day_of_month" {
  description = "Map of day_of_month values across all application_scan_schedules, keyed the same as var.application_scan_schedules"
  value       = { for k, v in britive_application_scan_schedule.application_scan_schedules : k => v.day_of_month }
}
output "application_scan_schedules_day_of_week" {
  description = "Map of day_of_week values across all application_scan_schedules, keyed the same as var.application_scan_schedules"
  value       = { for k, v in britive_application_scan_schedule.application_scan_schedules : k => v.day_of_week }
}
output "application_scan_schedules_frequency_type" {
  description = "Map of frequency_type values across all application_scan_schedules, keyed the same as var.application_scan_schedules"
  value       = { for k, v in britive_application_scan_schedule.application_scan_schedules : k => v.frequency_type }
}
output "application_scan_schedules_hour_interval" {
  description = "Map of hour_interval values across all application_scan_schedules, keyed the same as var.application_scan_schedules"
  value       = { for k, v in britive_application_scan_schedule.application_scan_schedules : k => v.hour_interval }
}
output "application_scan_schedules_name" {
  description = "Map of name values across all application_scan_schedules, keyed the same as var.application_scan_schedules"
  value       = { for k, v in britive_application_scan_schedule.application_scan_schedules : k => v.name }
}
output "application_scan_schedules_next_run" {
  description = "Map of next_run values across all application_scan_schedules, keyed the same as var.application_scan_schedules"
  value       = { for k, v in britive_application_scan_schedule.application_scan_schedules : k => v.next_run }
}
output "application_scan_schedules_org_scan" {
  description = "Map of org_scan values across all application_scan_schedules, keyed the same as var.application_scan_schedules"
  value       = { for k, v in britive_application_scan_schedule.application_scan_schedules : k => v.org_scan }
}
output "application_scan_schedules_start_time" {
  description = "Map of start_time values across all application_scan_schedules, keyed the same as var.application_scan_schedules"
  value       = { for k, v in britive_application_scan_schedule.application_scan_schedules : k => v.start_time }
}
output "application_scan_schedules_task_id" {
  description = "Map of task_id values across all application_scan_schedules, keyed the same as var.application_scan_schedules"
  value       = { for k, v in britive_application_scan_schedule.application_scan_schedules : k => v.task_id }
}

