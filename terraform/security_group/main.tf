resource "aws_security_group" "rds_sg" {
  name_prefix = "${replace(var.app_name, "-", "_")}_sg"
  description = "Security group for RDS"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks =  var.allowed_cidrs
  }

  egress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidrs
  }

  tags = {
    Name = "${replace(var.app_name, "-", "_")}_sg"
  }
}
