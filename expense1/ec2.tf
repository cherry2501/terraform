resource "aws_instance" "terraform" {
  count                  = length(var.instance_names)
  ami                    = data.aws_ami.ami_id.id
  instance_type          = var.instance_names[count.index] == "mysql" ? "t3.small" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]



  tags = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_security_group" "allow-ssh" {
  name        = "allow-ssh"
  description = "This will allow traffic for port22"

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
}