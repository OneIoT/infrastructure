# kubernete-ops
kubernete dev ops

1. Install kubernete

Rememeber configuration:

[kubeconfig] Wrote KubeConfig file to disk: "/etc/kubernetes/admin.conf"
[kubeconfig] Wrote KubeConfig file to disk: "/etc/kubernetes/kubelet.conf"
[kubeconfig] Wrote KubeConfig file to disk: "/etc/kubernetes/controller-manager.conf"
[kubeconfig] Wrote KubeConfig file to disk: "/etc/kubernetes/scheduler.conf"


2. Start kubernete service

<pre>
kubeadm init
</pre>


3. Service ports

<pre>

Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 127.0.0.1:10248         0.0.0.0:*               LISTEN      4120/kubelet    
tcp        0      0 127.0.0.1:10249         0.0.0.0:*               LISTEN      5362/kube-proxy 
tcp        0      0 127.0.0.1:10251         0.0.0.0:*               LISTEN      5116/kube-scheduler
tcp        0      0 127.0.0.1:2379          0.0.0.0:*               LISTEN      4750/etcd       
tcp        0      0 127.0.0.1:10252         0.0.0.0:*               LISTEN      5005/kube-controlle
tcp        0      0 127.0.0.1:2380          0.0.0.0:*               LISTEN      4750/etcd       
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      1145/sshd       
tcp6       0      0 :::10250                :::*                    LISTEN      4120/kubelet    
tcp6       0      0 :::6443                 :::*                    LISTEN      4891/kube-apiserver
tcp6       0      0 :::10255                :::*                    LISTEN      4120/kubelet    
tcp6       0      0 :::22                   :::*                    LISTEN      1145/sshd       
tcp6       0      0 :::4194                 :::*                    LISTEN      4120/kubelet    
udp        0      0 0.0.0.0:68              0.0.0.0:*                           859/dhclient  


</pre>


