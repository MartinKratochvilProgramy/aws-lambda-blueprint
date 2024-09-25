resource "aws_db_subnet_group" "main" {
  name       = "${var.app_name}-subnet_group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.app_name}-subnet_group"
  }
}

resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  db_name              = "${replace(var.app_name, "-", "_")}_db"
  username             = var.username
  password             = var.password
  parameter_group_name = aws_db_parameter_group.default.name
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name = aws_db_subnet_group.main.name
  skip_final_snapshot  = var.skip_final_snapshot
  identifier           = "${replace(var.app_name, "-", "")}db"

  tags = {
    Name = "${replace(var.app_name, "-", "_")}_db"
  }
}

resource "aws_db_parameter_group" "default" {
  name   = "${var.app_name}-param-group"
  family = "postgres16"

  parameter {
    name  = "rds.force_ssl"
    value = 0
  }
}
