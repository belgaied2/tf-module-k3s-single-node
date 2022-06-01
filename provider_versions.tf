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