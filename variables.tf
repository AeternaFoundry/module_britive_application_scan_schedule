variable "application_scan_schedules" {
  description = <<EOT
Map of application_scan_schedules, attributes below
Required:
    - application_id
    - frequency_type
    - name
Optional:
    - day_of_month
    - day_of_week
    - hour_interval
    - org_scan
    - start_time
    - associations (block):
        - type (required)
        - value (required)
EOT

  type = map(object({
    application_id = string
    frequency_type = string
    name           = string
    day_of_month   = optional(number)
    day_of_week    = optional(string)
    hour_interval  = optional(number)
    org_scan       = optional(bool)
    start_time     = optional(string)
    associations = optional(list(object({
      type  = string
      value = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.application_scan_schedules : (
        contains([for v in ["Hourly", "Daily", "Weekly", "Monthly"] : lower(v)], lower(v.frequency_type))
      )
    ])
    error_message = "must be one of: \"Hourly\", \"Daily\", \"Weekly\", \"Monthly\""
  }
  validation {
    condition = alltrue([
      for k, v in var.application_scan_schedules : (
        v.day_of_week == null || (contains([for v in ["Sunday", "Sun", "Monday", "Mon", "Tuesday", "Tue", "Wednesday", "Wed", "Thursday", "Thu", "Friday", "Fri", "Saturday", "Sat"] : lower(v)], lower(v.day_of_week)))
      )
    ])
    error_message = "must be one of: \"Sunday\", \"Sun\", \"Monday\", \"Mon\", \"Tuesday\", \"Tue\", \"Wednesday\", \"Wed\", \"Thursday\", \"Thu\", \"Friday\", \"Fri\", \"Saturday\", \"Sat\""
  }
  validation {
    condition = alltrue([
      for k, v in var.application_scan_schedules : (
        v.associations == null || alltrue([for item in v.associations : (contains([for v in ["Environment", "EnvironmentGroup"] : lower(v)], lower(item.type)))])
      )
    ])
    error_message = "must be one of: \"Environment\", \"EnvironmentGroup\""
  }
  validation {
    condition = alltrue([
      for k, v in var.application_scan_schedules : (
        v.associations == null || alltrue([for item in v.associations : (length(item.value) >= 1)])
      )
    ])
    error_message = "must not be empty"
  }
}

