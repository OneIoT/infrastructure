

sudo cp /etc/kubernetes/admin.conf $HOME/
sudo chown $(id -u):$(id -g) $HOME/admin.conf
export KUBECONFIG=$HOME/admin.conf

kubectl apply -f https://git.io/weave-kube-1.6

#check dashboard installed or not
kubectl get pods --all-namespaces | grep dashboard

#install dashboard like google cloud
kubectl create -f https://git.io/kube-dashboard



kubectl get nodes


# check kubernete cluster info

kubectl cluster-info

#Kubernetes master is running at https://172.31.59.123:6443
#KubeDNS is running at https://172.31.59.123:6443/api/v1/proxy/namespaces/kube-system/services/kube-dns

#To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.



# us kubernete proxy

# kubectl proxy

# use external on aws

# scp root@172.31.59.123:/etc/kubernetes/admin.conf .
# kubectl --kubeconfig ./admin.conf proxy

#export MASTER_DNS=ec2-34-203-226-50.compute-1.amazonaws.com
