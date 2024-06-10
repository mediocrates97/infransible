resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type

  subnet_id              = var.subnet_ids[0]
  vpc_security_group_ids = [aws_security_group.this.id]
  key_name               = var.key_name

  associate_public_ip_address = true

  user_data = <<-EOF
    #!/bin/bash
    echo "Installing Docker..."
    sudo yum update -y
    sudo amazon-linux-extras install docker -y
    sudo service docker start
    sudo usermod -a -G docker ec2-user
  EOF
}

resource "aws_security_group" "this" {
  name_prefix = "ec2-sg-"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ssh_allowed_cidrs
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
