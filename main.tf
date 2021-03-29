resource "aws_mq_broker" "this" {
  broker_name                = var.broker_name
  engine_type                = var.engine_type
  engine_version             = var.engine_version
  storage_type               = var.storage_type
  host_instance_type         = var.host_instance_type
  authentication_strategy    = var.authentication_strategy
  deployment_mode            = var.deployment_mode
  apply_immediately          = var.apply_immediately
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
  publicly_accessible        = var.publicly_accessible
  security_groups            = var.security_groups
  subnet_ids                 = var.subnet_ids
  tags                       = var.tags

  user {
    username = var.username
    password = var.password
  }

  encryption_options {
    kms_key_id        = var.kms_key_id
    use_aws_owned_key = var.use_aws_owned_key
  }

  maintenance_window_start_time {
    day_of_week = var.maintenance_window_start_time.day_of_week
    time_of_day = var.maintenance_window_start_time.time_of_day
    time_zone   = var.maintenance_window_start_time.time_zone
  }

  logs {
    general = var.logs_general
  }

}
