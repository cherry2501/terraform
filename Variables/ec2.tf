resource "aws_security_group" "allow-ssh" {
    
    name = var.sg_name
    description = "Allow port no 22 for ssh traffic"

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.ingress_cidr
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
  
}

resource "aws_instance" "Terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow-ssh.id]
    tags = {
    Name = "terraform"
  }
  
}