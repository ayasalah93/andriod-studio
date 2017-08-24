if [[ $(kubectl get deployments | grep andriod) ]]; then
echo "deployments exists"
else
kubectl run -i --tty andriod --port=5901 --image=manar21/android-studio:junit-fabricplugin --replicas=2 --output=yaml --restart=Never
fi
