variable "vpc_cidr" {
  description = "cidr of the vpc"
  # default = ""
}

variable "tag_name" {
  description = "label for resource to indentify"
  # default = ""
}

variable "sub1_cidr" {
  description = "subnet cidr of the vpc"
  # default = ""
}
variable "sub2_cidr" {
  description = "subnet cidr of the vpc"
  # default = ""
}
variable "key_pair" {
  description = "key pair to connect instance"
  # default = ""
}
variable "instance_type" {
  description = "instance type for instance"
  # default = ""
}
variable "az" {
  description = "az for instance"
  # default = ""
}
