# Output attribute reference public ip
output "ec2_instacne_public_ip" {
  description = "EC2 instance public ip address"
  value       = aws_instance.tf_ec2.public_ip
}

# Output argument reference private ip
output "ec2_instacne_private_ip" {
  description = "EC2 instance private ip address"
  value       = aws_instance.tf_ec2.private_ip
}

# Output attribute reference security group
output "ec2_security_groups" {
  description = "List of security groups associated with this ec2"
  value       = aws_instance.tf_ec2.security_groups
  sensitive = true
}

# Output Create a public dns url
output "ec2_publicdns" {
  description = "public dns url for ec2"
  value       = aws_instance.tf_ec2.public_dns
}