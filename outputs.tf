output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

output "private_subnet2_id" {
  value = module.vpc.private_subnet2_id
}

output "ec2_instance_public_ip" {
  value = module.ec2_instance.ec2_instance_public_ip  
}

output "load_balancer_pub_dns" {
  value = module.load_balancer.load_balancer_dns_name
}