provider "aws" {
  region = var.region
}

data "aws_ami" "latest_amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64", "amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}

locals {
  resolved_ami_id = var.ami_id != "" ? var.ami_id : data.aws_ami.latest_amazon_linux.id
}

resource "aws_instance" "this" {
  ami           = local.resolved_ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
