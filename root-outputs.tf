output "pub-sub-ids" {

  value = "${module.public_subnets.ids}"

}


output "sg_info" {
  
  value = "${module.security_group.sg_info}"

}