#
# Deploys a microservice to Kubernetes.
#
# Assumes the image has already been built and published to the container registry.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   NAME - The name of the microservice to deploy.
#   VERSION - The version of the microservice being deployed.
#   DATABASE_URL - The PostgreSQL Database that will be used to store data.
#
# Usage:
#
#   ./scripts/deploy.sh
#

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$DIRECTORY"
: "$VERSION"
: "$DATABASE_URL"

envsubst < ./scripts/kubernetes/${DIRECTORY}_deployment.yaml | kubectl apply -f -