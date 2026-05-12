terraform {
  required_version = "1.14.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.41"
    }
  }

  backend "s3" {

    bucket  = "digistackpav23456tej"
    key     =  "digi-dev/terraform.tfstate"
    region  =  "ap-south-1"
    encrypt =   true
    use_lockfile = true
  }
}
provider "aws" {
  region = var.region
}