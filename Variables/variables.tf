variable "ami_id"{
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
  
}

variable "sg_nmae" {
    default = "allow_ssh"
  
}

variable "from_port" {
    default = 22
    type = number
  
}

variable "to_port" {
    default = 22
    type = number
  
}

variable "protocol" {
    default = "tcp"
  
}

variable "ingress_cidr" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
  
}