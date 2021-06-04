provider "aws" {
    access_key = "xxxxxxxxxxxxxx"
    secret_key = "xxxxxxxxxxxxxx"
    region = "us-east-1"
}

module "Prod-vpc" {
     source = "./modules/vpc"
vpc_name = "Module_Prod_vpc"
vpc_cidr       = "10.30.0.0/16"
IGW_name       = "Module_Prod_vpc_IGW"
Main_route_table = "Module_Prod_vpc_Main_RT"
}



terraform {
  backend "s3" {
    bucket ="sampathiterraformbucket"
    key = "terraform.tfstate"
    dynamodb_table = "terraform-state-lock-dynamo"  
    region = "us-east-1"
  }
  
}


#output Prod_vpc_id {
#    value = module.Prod-vpc
#}

#output DEV_vpc_id {
#    value = module.DEV-vpc
#}
