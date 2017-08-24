if [[ $(kubectl get deployments | grep andriod) ]]; then
echo "deployments exists"
else
kubectl run -i andriod --command bash --port=5901 --image=manar21/android-studio:junit-fabricplugin --replicas=1 --output=yaml --dry-run > "andrioddeploy-rc.yaml"
kubectl create -f "andrioddeploy-rc.yaml"
fi
