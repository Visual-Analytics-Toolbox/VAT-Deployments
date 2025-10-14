
kubectl create ns local-path-provisioner 
kubectl create ns redis
#kubectl create ns minio
kubectl create ns postgres-operator
kubectl create ns vat-backend
helm upgrade --install --namespace local-path-provisioner -f local-path-provisioner/values-kind.yaml local-path-provisioner ./local-path-provisioner/
helm upgrade --install --namespace redis -f redis/values-kind.yaml redis ./redis/
#helm upgrade --install --namespace minio -f minio/values-kind.yaml minio ./minio/
helm upgrade --install --namespace postgres-operator -f postgres-operator/values-kind.yaml postgres-operator ./postgres-operator/

helm upgrade --install --namespace vat-backend -f vat-backend/values-kind.yaml vat-backend ./vat-backend/