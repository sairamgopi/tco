output "private_subnets" {
  
  value = module.private_subnets.*.id

}