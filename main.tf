resource "aws_instance" "k3s-node" {
    ami           = "ami-0b107cb9573a84436"
    instance_type = "t3a.medium"
    vpc_security_group_ids = [ data.aws_security_group.k3s-node-sg.id ]
    tags = {
        Name = "k3s-${var.node_name_suffix}"
    }

    connection {
        type     = "ssh"
        user     = "root"
        password = var.root_password
        host     = self.public_ip
    }

    provisioner "remote-exec" {
        inline = [
            "hostnamectl set-hostname k3s-${var.node_name_suffix}",
            "export PATH=$PATH:/opt/k3s",
            "sleep 30", # Waiting until the Kubectl API is available
            "kubectl delete node localhost",
            
        ]
    }
}

data "aws_security_group" "k3s-node-sg" {
    name = var.sg_name
}

resource "rancher2_cluster" "k3s_single_node_cluster" {
    count = var.register_cluster ? 1 : 0 
    name = "k3s-${var.node_name_suffix}"
    k3s_config {
    #   version = var.k3s_version
    }
}

resource "null_resource" "join_rancher" {
    count = var.register_cluster ? 1 : 0 
    connection {
        type = "ssh"
        user = "root"
        password = var.root_password
        host = aws_instance.k3s-node.public_ip
    }

    provisioner "remote-exec" {
        inline = [
            "echo Registering the K3s cluster with Rancher...",
            "export PATH=$PATH:/opt/k3s",
            "${rancher2_cluster.k3s_single_node_cluster[count.index].cluster_registration_token[0].insecure_command}",
            "echo Cluster Registered!",
        ]
    }
}