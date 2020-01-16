variable "public_subnets_cidr" {

  type = list

}


variable "vpc_id"{

  type = string

}




variable "AZs" {
  
  type = list(string)
  default = ["a","b","c","d","e","f"]

}

variable "region" {
  
  type = string

}



