account_id = 569023477847

cloudwatch = {
  alarm_name          = "CPU_Utilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "node_cpu_limit"
  namespace           = "ContainerInsights"
  period              = "120"
  statistic           = "Sum"
  threshold           = "5"
  alarm_description   = "This metric monitors node cpu utilization"
  ClusterName         = "my-cluster"
}

node_limit = {
  alarm_name          = "Node_Memory_Limit"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "node_memory_limit"
  namespace           = "ContainerInsights"
  period              = "120"
  statistic           = "Sum"
  threshold           = "5"
  alarm_description   = "This metric monitors node memory limit"
  ClusterName         = "my-cluster"
}

disk_utilization = {
  alarm_name          = "Disk_Utilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "node_filesystem_utilization"
  namespace           = "ContainerInsights"
  period              = "120"
  statistic           = "Sum"
  threshold           = "5"
  alarm_description   = "This metric monitors disk utilization"
  ClusterName         = "my-cluster"
}
topic_subscription = {
  protocol = "email"
  endpoint = "abc123@gmail.com"
}