variable "instance_names" {
    type = list(string)
    default = ["mysql", "backend", "frontend"]
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "zone_id" {
  default = "Z01267773J57SG8MZVSO"
}

variable "domain_name" {
  default = "charanworld.online"
}