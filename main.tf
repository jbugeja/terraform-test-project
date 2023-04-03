provider "aws" {
  region = var.aws_region
}

module "vpc" {
    source = "./modules/vpc"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"

  subnet_id  = module.vpc.public_subnet_id
  vpc_id = module.vpc.vpc_id
  vpc_security_group_id = module.vpc.aws_security_group_id
}

module "load_balancer" {
  source = "./modules/load_balancer"
  security_groups = module.vpc.aws_security_group_id
  subnets = [module.vpc.private_subnet_id, module.vpc.private_subnet2_id]
  vpc_id = module.vpc.vpc_id
  target_id = module.ec2_instance.ec2_instance_id
}

module "rds_database" {
  source = "./modules/rds_database"
  vpc_id = module.vpc.vpc_id
  private_subnet_ids = [module.vpc.private_subnet_id, module.vpc.private_subnet2_id]
}

module "route53" {
  source = "./modules/route53"
  records = module.load_balancer.load_balancer_dns_name
  zone_id = module.load_balancer.zone_id
}