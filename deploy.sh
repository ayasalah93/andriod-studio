if [[ $(kubectl get deployments | grep andriod) ]]; then
echo "deployments exists"
else
kubectl run andriod --image=docker.io/manar21/android-studio:junit-fabricplugin --replicas=1 --output=yaml --dry-run > "andrioddeploy-rc.yaml"
kubectl run -i --port=5901 andriod
kubectl create -f "andrioddeploy-rc.yaml"
fi
