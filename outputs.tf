# Resource Group and Network outputs
output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

output "virtual_network_name" {
  value = module.virtual_network.virtual_network_name
}

output "network_security_group_id" {
  value = module.network_security_group.network_security_group_id
}

output "subnet_ids" {
  value = {
    for k, v in module.subnet : k => v.subnet_id
  }
}

output "subnet_names" {
  value = {
    for k, v in module.subnet : k => v.subnet_name
  }
}

# AKS Cluster outputs
output "aks_cluster_id" {
  description = "The ID of the AKS cluster"
  value       = module.aks.cluster_id
}

output "aks_cluster_name" {
  description = "The name of the AKS cluster"
  value       = module.aks.cluster_name
}

output "aks_cluster_fqdn" {
  description = "The FQDN of the AKS cluster"
  value       = module.aks.cluster_fqdn
  sensitive   = true
}

output "aks_oidc_issuer_url" {
  description = "The OIDC issuer URL of the cluster"
  value       = module.aks.oidc_issuer_url
}

output "aks_kubelet_identity" {
  description = "The kubelet managed identity of the cluster"
  value       = module.aks.kubelet_identity
}

# ACR outputs
output "acr_id" {
  description = "The ID of the Container Registry"
  value       = module.acr.acr_id
}

output "acr_login_server" {
  description = "The login server URL of the Container Registry"
  value       = module.acr.acr_login_server
}

output "acr_private_endpoint_ip" {
  description = "The private IP address of the ACR private endpoint"
  value       = module.acr.private_endpoint_ip
}

# MySQL Flexible Server outputs
output "mysql_server_id" {
  description = "The ID of the MySQL Flexible Server"
  value       = module.mysql.server_id
}

output "mysql_server_name" {
  description = "The name of the MySQL Flexible Server"
  value       = module.mysql.server_name
}

output "mysql_server_fqdn" {
  description = "The FQDN of the MySQL Flexible Server"
  value       = module.mysql.server_fqdn
  sensitive   = true
}