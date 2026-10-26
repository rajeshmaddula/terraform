
variable "environment" {
    default = "dev"
  
}

variable "ami_id" {
    type = string
    default = "ami-0055977a6e828a4f4"
  
}

variable "instance_type" {
    type = string
  default = "t3.micro"
  
}

variable "ec2_tags" {
    type = map
    default = {
    Name = "terraform"
    Project = "Roboshop"
    Terraform = "true"
    Environment = "dev"
    }
  
}

variable "sg_name" {
    type = string
    default = "allow_all_terraform"
}

variable "description" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
  
}

variable "from_port" {
    type = number
    default = 0
}

variable "to_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list 
    default = ["0.0.0.0/0"]
  
}

variable "sg_tags" {
  type = map 
    default = {
    Name = "terraform"
    Project = "Roboshop"
    Terraform = "true"
    Environment = "dev"
    }
}