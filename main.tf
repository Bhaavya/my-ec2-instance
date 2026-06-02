provider "aws" {
  region = var.region
}

data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

locals {
  resolved_ami_id = var.ami_id != "" ? var.ami_id : data.aws_ssm_parameter.al2023_ami.value
}

resource "aws_instance" "this" {
  ami           = local.resolved_ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
