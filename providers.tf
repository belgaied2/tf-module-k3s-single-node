provider "aws" {
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    region     = var.aws_region
}

provider "rancher2" {
    api_url = var.api_url
    token_key = var.token_key
    insecure = true
}

terraform{
  required_providers {
    rancher2 = {
        source  = "rancher/rancher2"
        version = "1.23.0"
    }
    aws = {
        source = "hashicorp/aws"
        version = "4.16.0"
    }
  }
}