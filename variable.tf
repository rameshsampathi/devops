variable "vpc_name" {}
variable "vpc_cidr" {}
variable "azs" {
    default = [ "us-east-1a", "us-east-1b", "us-east-1c" ]
}
variable "public_subnets_cidr" {
    default = [ "10.30.1.0/24", "10.30.2.0/24", "10.30.3.0/24" ]
}
variable "IGW_name" {}
variable "Main_route_table" {}
