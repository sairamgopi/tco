variable "environment" {

  type = string 

  default = "dev"

}


variable "vpc_cidr" {

  type = string
  
  default = "10.0.0.0/16"
  
}

variable "region" {

  type = string
  
  default = "eu-west-2"

}

variable "public_subnets_cidr" {
  
  type = map
  
  default= {
 
	  "app.eu-west-2a" = "10.0.1.0/24",
	  "app.eu-west-2b" = "10.0.2.0/24",
	  "db.eu-west-2c"  = "10.0.3.0/24"
	
  }
}

variable "private_subnets_cidr" {
  
  type = map
  
  default= {
 
	  "app.eu-west-2a" = "10.0.4.0/24",
	  "app.eu-west-2b" = "10.0.5.0/24",
 
  }
}

