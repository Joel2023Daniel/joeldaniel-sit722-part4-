# 
# Remove containers from Kubernetes.
#
# Usage:
#
#   ./scripts/delete.sh
#

kubectl delete -f kubernetes/book_catalog_deployment.yaml
kubectl delete -f kubernetes/inventory_management_deployment.yaml