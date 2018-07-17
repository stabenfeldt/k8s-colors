cat k8s/colors.yml |  \
sed 's/MY-INSTANCE/${PROJECT_ID}/' > ready.yml && \
kubectl apply -f ready.yml
