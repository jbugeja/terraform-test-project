output "ec2_instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value = aws_instance.example.public_ip
}

output "ec2_instance_id" {
  value = aws_instance.example.id
}