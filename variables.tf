variable "sg_name" {
    type = string
    description = "Security Group name for the K3s Nodes"
}

variable "node_name_suffix" {
    type = string
    description = "Suffix to give to the node and cluster names"
}

variable "root_password" {
    type = string
    description = "root password for the SLE Micro K3s node"
}

# variable "k3s_version" {
#     type = string
#     description = "Version of the desired K3S cluster"
#     default = "v1.21.10+k3s1"
# }

variable "register_cluster" {
  type = bool
  description = "Boolean value to decide if needed to register K3s cluster"
  default = false
}