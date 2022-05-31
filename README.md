# Terraform Module for Single Node K3S Clusters based on SLE Micro
This Terraform module aims at creating on AWS, a single node K3s cluster, by using SLE Micro 5.2 as an OS. After creating the cluster, the module will register it to an existing Rancher instance.

# Module additional documentation

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.16.0 |
| <a name="requirement_rancher2"></a> [rancher2](#requirement\_rancher2) | 1.23.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.16.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.1.1 |
| <a name="provider_rancher2"></a> [rancher2](#provider\_rancher2) | 1.23.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.k3s-node](https://registry.terraform.io/providers/hashicorp/aws/4.16.0/docs/resources/instance) | resource |
| [null_resource.join_rancher](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [rancher2_cluster.k3s_single_node_cluster](https://registry.terraform.io/providers/rancher/rancher2/1.23.0/docs/resources/cluster) | resource |
| [aws_security_group.k3s-node-sg](https://registry.terraform.io/providers/hashicorp/aws/4.16.0/docs/data-sources/security_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_url"></a> [api\_url](#input\_api\_url) | Rancher API URL | `string` | n/a | yes |
| <a name="input_aws_access_key"></a> [aws\_access\_key](#input\_aws\_access\_key) | AWS ACCESS KEY | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS REGION | `string` | n/a | yes |
| <a name="input_aws_secret_key"></a> [aws\_secret\_key](#input\_aws\_secret\_key) | AWS SECRET KEY | `string` | n/a | yes |
| <a name="input_node_name_suffix"></a> [node\_name\_suffix](#input\_node\_name\_suffix) | Suffix to give to the node and cluster names | `string` | n/a | yes |
| <a name="input_root_password"></a> [root\_password](#input\_root\_password) | root password for the SLE Micro K3s node | `string` | n/a | yes |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | Security Group name for the K3s Nodes | `string` | n/a | yes |
| <a name="input_token_key"></a> [token\_key](#input\_token\_key) | Rancher API Token | `string` | n/a | yes |

## Outputs

No outputs.
