
resource "aws_instance" "Roboshop" {
  #count = 10
  count = length(var.instance)
  ami           = "ami-0055977a6e828a4f4"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = var.instance[count.index]
    Project = "Roboshop"
  }
}


resource "aws_security_group" "allow_tls" {
  name        = "allow_all_terraform" # this is for aws account
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_all_terraform"
  }
}
