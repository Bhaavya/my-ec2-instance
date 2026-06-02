output "region" {
  description = "AWS region the EC2 instance is deployed in"
  value       = var.region
}

output "resolved_ami_id" {
  description = "AMI ID actually used to launch the instance"
  value       = local.resolved_ami_id
}
