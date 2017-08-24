if [[ $(kubectl get deployments | grep andriod) ]]; then
echo "deployments exists"
else
kubectl run andriod --image=$IMAGE_NAME --replicas=2 --output=yaml --dry-run > "deploy-rc.yaml"
kubectl create -f "deploy-rc.yaml"
fi
