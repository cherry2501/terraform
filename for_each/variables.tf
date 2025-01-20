variable "instances" {
  type = map
  default = {
    frontend = "t2.micro",
    backend = "t2.small",
    mysql = "t3.micro"
  }
}

 variable "zone_id" {
  default = "Z01267773J57SG8MZVSO"
}

variable "domain_name" {
  default = "charan.online"
}