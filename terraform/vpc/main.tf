resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${replace(var.app_name, "-", "_")}_vpc"
  }
}

resource "aws_subnet" "subnet_1" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.subnet_1_cidr
  availability_zone = var.subnet_1_az
  tags = {
    Name = "${replace(var.app_name, "-", "_")}_subnet_1"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.subnet_2_cidr
  availability_zone = var.subnet_2_az
  tags = {
    Name = "${replace(var.app_name, "-", "_")}_subnet_1"
  }
}
