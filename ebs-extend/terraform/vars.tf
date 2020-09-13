variable "AWS_REGIONS" {
  default = "us-east-1"
}

# TAGS
variable "ec2-name" {
  type    = "string"
  default = "ebs-extend"
}

variable "template" {
  type    = "string"
  default = "sandbox"
}
variable "application" {
  type    = "string"
  default = "ebs-extend"
}
variable "purpose" {
  type    = "string"
  default = "devops"
}
variable "created-on" {
  type    = "string"
  default = "May 30th 2020"
}

variable "ami" {
  type    = "string"
  # default = "ami-0603cbe34fd08cb81"
  # default = "ami-07b66785f4f646ccf"
  default = "ami-08f3d892de259504d"
}

variable "type" {
  type    = "string"
  default = "t2.micro"
}

variable "sourceCheck" {
  type    = "string"
  default = "enabled"
}

variable "public-ip" {
  type    = "string"
  default = "true"
}

variable "keys" {
  type    = "string"
  default = "base-template"
}

variable "instance-role" {
  type    = "string"
  default = "EC2_Role"
}

variable "volume-size" {
  type    = "string"
  default = "10,15,30"
}

variable "role" {
  type    = "string"
  default = "LambdaEC2FullAccess"
}
