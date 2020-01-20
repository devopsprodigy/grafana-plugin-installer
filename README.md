# grafana-plugin-installer

Helm chart for easy Grafana plugin installation from arbitrary branch.


## Usage

Clone repo:
```
git clone https://github.com/devopsprodigy/grafana-plugin-installer.git
```

Install chart:
```
helm install ./grafana-plugin-installer \ 
    --name YOUR_CHART_NAME \
    --set grafana.pvcName=GRAFANA_PVC_NAME \
    --set plugin.name=PLUGIN_NAME \
    --set plugin.repo=PLUGIN_REPO_URL \
    --set plugin.tag=PLUGIN_REPO_BRANCH \
    --namespace GRAFANA_NAMESPACE
```

Check job completion:
```
kubectl get job -l app=PLUGIN_NAME-grafana-plugin-installer -n GRAFANA_NAMESPACE 
```

Restart Grafana pods:
```
kubectl delete po -l app=grafana -n GRAFANA_NAMESPACE
```
