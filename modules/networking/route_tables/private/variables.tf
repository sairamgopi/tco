variable "vpc_id"{
  type = "string"
 
 }
 
variable "AZs" {
  type = "list(string)"
deafult = ["a","b","c","d","e","f"]
}

variable "region" {
  type = "string"
}



variable "routetype"{
  type =  "string"
default = "private"
}

variable "env"{
  type = "string"
}