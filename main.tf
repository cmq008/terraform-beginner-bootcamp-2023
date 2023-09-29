terraform {
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "PruebasCM"

  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}
  # cloud {
  #   organization = "PruebasCM"
  #   workspaces {
  #     name = "terra-house-1"
  #   }
  # }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.16.2"
    }    
  }
}

provider "aws" {
}

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}