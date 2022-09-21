variable "architecture" {
  type    = string
  default = ""
}

variable "availability_zone" {
  type    = string
  default = ""
}

variable "aws_ami_name" {
  type    = string
  default = ""
}

variable "block_device_mapping_volume_type" {
  type    = string
  default = ""
}

variable "instance_type" {
  type    = string
  default = "t2.nano"
}

variable "name" {
  type    = string
  default = "t2.nano"
}

variable "swing_bot_15" {
  type    = string
  default = ""
}

variable "root_device_type" {
  type    = string
  default = ""
}

variable "subnet_cidr_block" {
  type    = string
  default = ""
}

variable "virtualization_type" {
  type    = string
  default = ""
}

variable "volume_size_of_block_deivce" {
  type    = number
  default = 8
}

variable "volume_type_of_block_device" {
  type    = string
  default = ""
}

variable "vpc_cidr_block" {
  type    = string
  default = ""
}
