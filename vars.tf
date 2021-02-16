variable "AWS_REGION" {
  type = string
  default = "ap-southeast-1"
}

variable "AWS_AMIS" {
  type = map(string)
  description = "amis id"
  default = {
    ap-southeast-1 = "ami-0c20b8b385217763f"
  }
}

variable "AWS_INSTANCE_TYPE" {
  type = string
  description = "type of aws ec2 instance"
  default = "t2.micro"
}