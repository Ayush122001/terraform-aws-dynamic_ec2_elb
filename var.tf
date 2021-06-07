variable "aws_ami" {
  
}
variable "aws_count" {
  ddefault = 1  
}

variable "aws_az" {
  default = "ap-south-1"   
}

variable "instance_port" {
  type=map
  default = {"HTTP": 80}
}

variable "lb_port" {
  type=map
  default = {"HTTP": 80}
}

variable "lb_protocol" {
  type=map
  default = ["HTTP"]
}

variable "instance_protocol" {
  type=list
  default = ["HTTP"]
}

variable "health_check_target" {
  
}

variable "internal" {
 type=bool
 default = true 
}

variable "health_check_interval" {
  default=30
}

variable "health_check_timeout" {
  default=3
}

variable "associate_public_ip" {
  default=true
  type=bool
}

variable "sg_id" {
 type=list 
}

variable "instance_type" {
  default = "t2.micro"
}