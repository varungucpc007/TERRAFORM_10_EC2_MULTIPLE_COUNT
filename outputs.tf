output "instance_ids" {
  description = "IDs of created EC2 instances"
  value       = aws_instance.ec2_instances[*].id
}

output "public_ips" {
  description = "Public IPs of created EC2 instances"
  value       = aws_instance.ec2_instances[*].public_ip
}
