
provider "aws" {
  region     = var.region
  access_key = "AKIAUKV5HPCPDOZCOOGR"
  secret_key = "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"
}
module "vpc" {

  source = "./modules/networking/vpc"
  
  vpc_cidr = var.vpc_cidr
  env = var.environment
  region = var.region
    
}

module "public_subnets" {

  source = "./modules/networking/subnets/public"
  
  env = var.environment
  vpc_id = module.vpc.vpc_id
  public_subnets_cidr = var.public_subnets_cidr  
  region = var.region
}

module "private_subnets" {

  source = "./modules/networking/subnets/private"
  
  env = var.environment
  vpc_id = module.vpc.vpc_id
  public_subnets_cidr = var.private_subnets_cidr  
  region = var.region
}