terraform {
    cloud {
    organization = "belgaied"

    workspaces {
      name = "tf-module-k3s-single-node"
    }
  }
}