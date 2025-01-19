locals {
  domain_name = "charan.online"
  zone_id = "Z01267773J57SG8MZVSO"
  instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
  

}

#count.index won't work in locals
# values can't be overwrite