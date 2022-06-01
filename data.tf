data "http" "get_import_manifest" {
    url = var.api_url == "" ? "" : rancher2_cluster.k3s_single_node_cluster[0].cluster_registration_token[0].manifest_url
  
}