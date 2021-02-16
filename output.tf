output "public_dns" {
  description = "list of instance public dns"
  value = [aws_instance.this.*.public_dns]
}

output "public_ip" {
  value = [aws_instance.this.*.public_ip]
}

output "az_instance_location" {
  value = [aws_instance.this.*.availability_zone]
}

output "instance_id" {
  value = aws_instance.this.*.id
  }
