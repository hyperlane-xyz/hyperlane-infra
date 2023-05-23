terraform {
  backend "s3" {
    region = "us-east-1"
    bucket = "hyperlane-terraform-state"
    key    = "terraform.tfstate"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}



