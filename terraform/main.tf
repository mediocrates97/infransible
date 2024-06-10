provider "aws" {
  region = "us-east-1" 
}

module "s3_bucket" {
  source = "./modules/s3"

  bucket_name = local.bucket_name
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block = local.vpc_cidr_block
  subnet_cidrs   = local.subnet_cidrs
}

module "ec2" {
  source = "./modules/ec2"

  instance_type     = local.instance_type
  ami               = local.ami
  vpc_id            = module.vpc.vpc_id
  subnet_ids        = module.vpc.subnet_ids
  key_name          = local.key_name
  ssh_allowed_cidrs = local.ssh_allowed_cidrs
}
