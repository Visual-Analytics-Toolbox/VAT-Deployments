
helm upgrade --install -f local-path-provisioner/values-kind.yaml local-path-provisioner ./local-path-provisioner/
helm upgrade --install -f external-secrets/values.yaml external-secrets ./external-secrets/
helm upgrade --install -f redis/values-kind.yaml redis ./redis/
helm upgrade --install -f minio/values-kind.yaml minio ./minio/
helm upgrade --install -f postgres-operator/values-kind.yaml postgres-operator ./postgres-operator/

helm upgrade --install -f vat-backend/values-kind.yaml vat-backend ./vat-backend/