resource "aws_security_group" "allow-ssh" {
    
    name = "allow_ssh"
    description = "Allow port no 22 for ssh traffic"

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
  
}

resource "aws_instance" "Terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = var.environent == "prod" ? "t3.micro" : "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow-ssh.id]
    tags = {
    Name = "terraform"
  }
  
}