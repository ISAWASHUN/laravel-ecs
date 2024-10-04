terraform {
  backend "s3" {
    bucket = "aws-ecs-terraform-tfstate"
    key = "terraform.tfstate"
    region = local.region
    dynamodb_table = "aws-ecs-terraform-tfstate-locking"
    encrypt = true
  }
  required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 4.0"
   }
 }
}
 provider "aws" {
  region = local.region
 }
