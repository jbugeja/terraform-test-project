output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = aws_subnet.private.id
}

output "private_subnet2_id" {
  description = "The ID of the private subnet"
  value       = aws_subnet.private2.id
}

output "aws_security_group_id" {
  description = "The ID of the private subnet"
  value       = aws_security_group.public_sg.id
  
}