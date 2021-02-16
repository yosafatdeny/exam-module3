variable "INSTANCE_COUNT" {
  description = "jumlah instance yang akan di deploy"
  type = number
  default = 1
}

variable "AMI" {
  description = "ami id"
  type = string
}

variable "INSTANCE_TYPE" {
  description = "tipe instance"
  type = string
}

variable "SECURITY_GROUPS" {
  description = "list of security group"
  type = list
}

variable "KEYNAME" {
  description = "key name"
  type = string
}
