if [[ $(kubectl get deployments | grep andriod) ]]; then
echo "deployments exists"
else
kubectl run andriod -i --image=manar21/android-studio:junit-fabricplugin --replicas=1 --output=yaml --tty > "andrioddeploy-rc.yaml"
kubectl create -f "andrioddeploy-rc.yaml"
fi
