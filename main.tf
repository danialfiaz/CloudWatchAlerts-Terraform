module "cloudwatch" {
  source              = "./modules/cloudwatch"
  alarm_name          = var.cloudwatch.alarm_name
  comparison_operator = var.cloudwatch.comparison_operator
  evaluation_periods  = var.cloudwatch.evaluation_periods
  metric_name         = var.cloudwatch.metric_name
  namespace           = var.cloudwatch.namespace
  period              = var.cloudwatch.period
  statistic           = var.cloudwatch.statistic
  threshold           = var.cloudwatch.threshold
  alarm_description   = var.cloudwatch.alarm_description
  alarm_actions       = module.sns_topic.alarm_topic.arn
  ClusterName         = var.cloudwatch.ClusterName
}

module "node_limit" {
  source              = "./modules/node_limit"
  alarm_name          = var.node_limit.alarm_name
  comparison_operator = var.node_limit.comparison_operator
  evaluation_periods  = var.node_limit.evaluation_periods
  metric_name         = var.node_limit.metric_name
  namespace           = var.node_limit.namespace
  period              = var.node_limit.period
  statistic           = var.node_limit.statistic
  threshold           = var.node_limit.threshold
  alarm_description   = var.node_limit.alarm_description
  alarm_actions       = module.sns_topic.alarm_topic.arn
  ClusterName         = var.node_limit.ClusterName
}

module "disk_utilization" {
  source              = "./modules/disk_utilization"
  alarm_name          = var.disk_utilization.alarm_name
  comparison_operator = var.disk_utilization.comparison_operator
  evaluation_periods  = var.disk_utilization.evaluation_periods
  metric_name         = var.disk_utilization.metric_name
  namespace           = var.disk_utilization.namespace
  period              = var.disk_utilization.period
  statistic           = var.disk_utilization.statistic
  threshold           = var.disk_utilization.threshold
  alarm_description   = var.disk_utilization.alarm_description
  alarm_actions       = module.sns_topic.alarm_topic.arn
  ClusterName         = var.disk_utilization.ClusterName
}

module "sns_topic" {
  source     = "./modules/sns_topic"
  protocol   = var.topic_subscription.protocol
  endpoint   = var.topic_subscription.endpoint
  account_id = var.account_id
}