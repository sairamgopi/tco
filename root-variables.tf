variable "vpc_cidr" {

  type = string
  
  default = "10.0.0.0/16"
  
}

variable "region" {

  type = string

}
variable "public_subnets_cidr" {
  
  type = list
  
  default= ["10.0.1.0/20","10.0.2.0/20"]
  

}

