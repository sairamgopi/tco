variable "vpc_id"{
type = string
}

variable "gateway_id"{
type = string
}




variable "AZs" {
type = list(string)
deafult = ["a","b","c","d","e","f"]
}

variable "region" {
type = string
}

variable "region-code"{
type = string
}

variable "routetype"{
type =  string
default = "public"
}

variable "env"{
type = string
}