output "instance_id" {
  description = "The ID of the created EC2 instance"
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.this.public_ip
}

output "private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.this.private_ip
}

output "region" {
  description = "AWS region the EC2 instance is deployed in"
  value       = var.region
}
