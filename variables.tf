variable "cidr_block" {
    #default = "10.0.0.0/16"
  
}
variable "enable_dns_hostnames" {
    default = true
  
}
variable "enable_dns_support" {
    default = true
  
}
variable "project_name" {
    
  
}
variable "env" {
  
}
variable "common_tags" {
    default = {}
  
}
variable "vpc_tags" {
    default = {}
}
variable "public_subnet_cidr" {
    type = list
    validation {
      condition = length(var.public_subnet_cidr) == 2
      error_message = "Please enter 2 public subnet cidr"
    } 
}
variable "gw_tags" {
  default = {}
}
variable "private_subnet_cidr" {
    type = list
    validation {
      condition = length(var.private_subnet_cidr) == 2
      error_message = "Please enter 2 private subnet cidr"
    }   
}
variable "database_subnet_cidr" {
    type = list
    validation {
      condition = length(var.database_subnet_cidr) == 2
      error_message = "Please enter 2 database subnet cidr"
    }   
}
variable "db_subnet_group_tags" {
  default = {}
  
}
