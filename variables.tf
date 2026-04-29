variable "environment" {
  type = string
  description = "environment to deploy"
  default = "staging"
}

variable "owner" {
  type = string
  description = "owner bussines devison"
  default = "HR"
}

variable "region" {
  type = string
  description = "region for the resources"
  default = "us-east-1"
}

variable "my_istance" {
  type = list(string)
  description = "this is instance"
}

variable "my_tags" {
  type = object({
    name = string
  })

  default = {
    name = "akhil"
  }
}

variable "cidr" {

  type = string
  description = "cidr block for my vpc"
  default = "10.10.0.0/16"
  
}