variable "region" {
  description = "AWS region for the EC2 instance"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami_id" {
  description = "Optional AMI ID override. If empty, the latest Amazon Linux 2023 AMI is fetched from SSM."
  type        = string
  default     = ""
}
