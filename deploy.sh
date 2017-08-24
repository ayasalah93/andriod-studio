if [[ $(kubectl get deployments | grep $DEPLOYMENT_NAME) ]]; then
echo "deployments exists"
else
kubectl run $DEPLOYMENT_NAME --image=$IMAGE_NAME --replicas=2 --output=yaml --dry-run > "deploy-rc.yaml"
kubectl create -f "deploy-rc.yaml"
fi
