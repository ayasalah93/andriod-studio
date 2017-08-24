if [[ $(kubectl get deployments | grep andriod) ]]; then
echo "deployments exists"
else
kubectl run -i --port=5901 andriod --image=docker.io/manar21/android-studio:junit-fabricpluginnginx --replicas=1 --output=yaml --dry-run > "andriod-deploy-rc.yaml"
kubectl create -f "andriod-deploy-rc.yaml"
fi
