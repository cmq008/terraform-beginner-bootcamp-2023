terraform {
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "PruebasCM"

  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}
  cloud {
    organization = "PruebasCM"
    workspaces {
      name = "terra-house-1"
    }
  }

  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.16.2"
    }    
  }
}


provider "random" {
  # Configuration options
}

provider "aws" {
}
