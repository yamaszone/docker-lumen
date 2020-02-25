# Kubernetes Deployment for Laravel Lumen Stack

## Quickstart
### Deploy
- `kubectl apply -f kubernetes/` # Run this from project root to __deploy__ the stack

### Expose/Access App
#### via NodePort (Docker Desktop)
- `NODE_PORT=$(kubectl get svc -l app=nginx -o go-template='{{range .items}}{{range.spec.ports}}{{if .nodePort}}{{.nodePort}}{{"\n"}}{{end}}{{end}}{{end}}')` # get NodePort of NGINX
- `curl -X GET http://localhost:$NODE_PORT; echo` # access service

#### via Port-Forward
- `kubectl port-forward deployment/nginx-deployment 8080:80` # forward local port `8080` to NGINX pod port `80` within cluster
- `curl -X GET http://localhost:8080; echo` # access service from a different terminal

### Destroy
  - `kubectl delete -f kubernetes/` # Run this from project root to __destroy__ the stack
