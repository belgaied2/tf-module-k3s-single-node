variable "aws_access_key" {
    type = string
    description = "AWS ACCESS KEY"
}
variable "aws_secret_key" {
    type = string
    description = "AWS SECRET KEY"
}
variable "aws_region" {
    type = string
    description = "AWS REGION"
}
variable "api_url" {
    type = string
    description = "Rancher API URL"
    default = ""
}
variable "token_key" {
    type = string
    description = "Rancher API Token"
    default = ""
}

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