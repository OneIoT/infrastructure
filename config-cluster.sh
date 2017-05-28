$ kubectl config set-cluster openiotsuper-cluster --server=http://54.210.204.155:8080
$ kubectl config set-context openiotsuper-system --cluster=openiotsuper-cluster
$ kubectl config use-context openiotsuper-system
$ kubectl get nodes

