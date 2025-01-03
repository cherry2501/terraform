variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "backend", "frontend"]
  description = "description"
}

#  variable "zone_id" {
#   default = "Z01267773J57SG8MZVSO"
# }

# variable "domain_name" {
#   default = "charan.online"
# }

variable "environment" {
  default = "prod"
}