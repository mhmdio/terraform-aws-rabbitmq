module "basic" {
  source = "../../"

  broker_name        = "${var.namespace}-${var.stage}-${var.name}"
  engine_version     = var.rabbitmq_engine_version
  host_instance_type = var.rabbitmq_host_instance_type
  security_groups    = [module.mq_rabbitmq_sg.this_security_group_id]
  subnet_ids         = [module.vpc.private_subnets[0]]
  username           = var.rabbitmq_username
  password           = random_password.rabbitmq_password.result
  tags               = var.tags
}

