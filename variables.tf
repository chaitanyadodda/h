variable "vpc-cidr-value" {
  default = ["10.10.0.0/16","10.11.0.0/16","10.222.0.16/28","10.232.0.32/28","10.242.49.0/28"]
}

/*
variable "vpc-cidr-value" {
  type = map(object({
    cidr_block = ["10.10.0.0/16","10.11.0.0/16","10.222.0.16/28","10.232.0.32/28","10.242.49.0/28"]
  }))
}*/

variable "subnet-cidr-value" {
  type = list 
  default = ["10.10.1.0/24","10.11.1.0/24","10.222.1.0/16","10.232.1.0/16","10.242.0.0/16"]
}

variable "ec2_ami" {
  default = "ami-06178cf087598769c"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_keypair" {
  default = "loginkey"
}

variable "ec2_count" {
  type = number
  default = "3"
}

variable "environment" {
  default = "stagging"
}



