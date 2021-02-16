resource "aws_instance" "server-ubuntu" {
  ami                     = var.AWS_AMIS[var.AWS_REGION]
  instance_type           = var.AWS_INSTANCE_TYPE
  vpc_security_group_ids  = ["sg-04c31832023bb58b0","sg-0f9471248c4f58252"]
  key_name                = "jcde-key"
  tags = {
    Name = "server-ubuntu-2"
  }
}

resource "aws_instance" "server-redhat" {
  ami                     = "ami-0f86a70488991335e"
  instance_type           = var.AWS_INSTANCE_TYPE
  vpc_security_group_ids  = ["sg-04c31832023bb58b0","sg-0f9471248c4f58252"]
  key_name                = "jcde-key"
  tags = {
    Name = "server-redhat"
  }
}

output "ip-ubuntu" {
  value = [aws_instance.server-ubuntu.public_ip]
}

output "ip_redhat" {
  value = [aws_instance.server-redhat.public_ip]
}