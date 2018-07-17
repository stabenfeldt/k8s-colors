cat k8s/colors.yml |  \
sed 's/PROJECT_ID/${PROJECT_ID}/' > ready.yml && \
kubectl apply -f ready.yml

kubectl get pods
kubectl get deployments
kubectl get services
