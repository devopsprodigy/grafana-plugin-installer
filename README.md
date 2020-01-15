# kubegraf-installer

## Usage

Clone repo:
```
git clone https://github.com/devopsprodigy/kubegraf-installer.git
```

Install chart:
```
helm install ./kubegraf --name kubegraf-installer \
    --set grafana.pvcName=GRAFANA_PVC_NAME,kubegraf.tag=KUBEGRAF_VERSION \
    --namespace GRAFANA_NAMESPACE
```

Check job completion:
```
kubectl get job -l app=kubegraf-installer -n GRAFANA_NAMESPACE 
```

Restart Grafana pods:
```
kubectl delete po -l app=grafana -n GRAFANA_NAMESPACE
```
