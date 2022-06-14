variable "account_id" {
  type = number
}

variable "cloudwatch" {
  type = object({
    alarm_name          = string
    comparison_operator = string
    evaluation_periods  = string
    metric_name         = string
    namespace           = string
    period              = string
    statistic           = string
    threshold           = string
    alarm_description   = string
    ClusterName         = string
  })
}

variable "node_limit" {
  type = object({
    alarm_name          = string
    comparison_operator = string
    evaluation_periods  = string
    metric_name         = string
    namespace           = string
    period              = string
    statistic           = string
    threshold           = string
    alarm_description   = string
    ClusterName         = string
  })
}

variable "disk_utilization" {
  type = object({
    alarm_name          = string
    comparison_operator = string
    evaluation_periods  = string
    metric_name         = string
    namespace           = string
    period              = string
    statistic           = string
    threshold           = string
    alarm_description   = string
    ClusterName         = string


  })
}
variable "topic_subscription" {
  type = object({
    protocol = string
    endpoint = string
  })

}
