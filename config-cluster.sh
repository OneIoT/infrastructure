

sudo cp /etc/kubernetes/admin.conf $HOME/
sudo chown $(id -u):$(id -g) $HOME/admin.conf
export KUBECONFIG=$HOME/admin.conf

kubectl apply -f https://git.io/weave-kube-1.6


kubectl get pods --all-namespaces | grep dashboard

kubectl create -f https://git.io/kube-dashboard



kubectl get nodes

