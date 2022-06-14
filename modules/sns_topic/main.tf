resource "aws_sns_topic" "alarm_topic" {
  name = "cpu_utilization"
}
resource "aws_sns_topic_policy" "my_sns_topic_policy" {
  arn    = aws_sns_topic.alarm_topic.arn
  policy = data.aws_iam_policy_document.sns_policy_document.json
}

data "aws_iam_policy_document" "sns_policy_document" {
  policy_id = "__default_policy_ID"

  statement {
    actions = [
      "SNS:Subscribe",
      "SNS:SetTopicAttributes",
      "SNS:RemovePermission",
      "SNS:Receive",
      "SNS:Publish",
      "SNS:ListSubscriptionsByTopic",
      "SNS:GetTopicAttributes",
      "SNS:DeleteTopic",
      "SNS:AddPermission",
    ]

    condition {
      test     = "StringEquals"
      variable = "AWS:SourceOwner"

      values = [
        var.account_id,
      ]
    }

    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    resources = [
      aws_sns_topic.alarm_topic.arn,
    ]

    sid = "__default_statement_ID"
  }
}


resource "aws_sns_topic_subscription" "sns_subscription" {
  topic_arn = aws_sns_topic.alarm_topic.arn
  protocol  = var.protocol
  endpoint  = var.endpoint
}