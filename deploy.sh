if [[ $(kubectl get deployments | grep andriod) ]]; then
echo "deployments exists"
else
kubectl run --bash andriod --port=5901 --image=manar21/android-studio:junit-fabricplugin --replicas=1 --output=yaml --dry-run > "andrioddeploy-rc.yaml"
kubectl create -f "andrioddeploy-rc.yaml"
fi
