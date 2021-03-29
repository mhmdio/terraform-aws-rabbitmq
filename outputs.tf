output "arn" {
  description = "ARN of the RabbitMQ broker."
  value       = aws_mq_broker.this.arn
}

output "id" {
  description = "ID of the RabbitMQ broker."
  value       = aws_mq_broker.this.id
}

output "console_url" {
  description = "The URL of the broker's RabbitMQ Web Console"
  value       = aws_mq_broker.this.instances.0.console_url
}

output "ip_address" {
  description = "IP Address of the RabbitMQ broker"
  value       = aws_mq_broker.this.instances.0.ip_address
}

output "endpoint" {
  description = "Broker's wire-level protocol endpoint"
  value       = aws_mq_broker.this.instances.0.endpoints
}
