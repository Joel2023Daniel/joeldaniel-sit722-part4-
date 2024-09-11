# Outputs for Azure Container Registry (ACR)
output "acr_login_url" {
  value = azurerm_container_registry.sit722joeldaniel.login_server
  description = "The login server URL for the ACR."
}

output "acr_username" {
  value = azurerm_container_registry.sit722joeldaniel.admin_username
  description = "The admin username for the ACR."
}

output "acr_password" {
  value = azurerm_container_registry.sit722joeldaniel.admin_password
  sensitive = true  # Ensure sensitive output for security
  description = "The admin password for the ACR."
}

# Outputs for Azure Kubernetes Services (AKS)
output "aks_kubeconfig" {
  value       = base64encode(azurerm_kubernetes_cluster.sit722joeldaniel.kube_config_raw)
  sensitive   = true
  description = "The kubeconfig for AKS in base64-encoded format."
}