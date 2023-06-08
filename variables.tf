#VPC
variable "vpc_name" {
  default = "vpc-service"
}

#Subnet
variable "subnet_name" {
  default ="sbn-service"
}

#Rango para VPC
variable "ip_cidr_range" {
  default = "10.10.0.0/28"
}

#Region
variable "region" {
  description = "region"
  default = "us-central1"
}
