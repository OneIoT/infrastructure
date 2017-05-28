# kubernete-ops
kubernete dev ops

1. Install kubernete

Rememeber configuration:

<pre>

[kubeconfig] Wrote KubeConfig file to disk: "/etc/kubernetes/admin.conf"
[kubeconfig] Wrote KubeConfig file to disk: "/etc/kubernetes/kubelet.conf"
[kubeconfig] Wrote KubeConfig file to disk: "/etc/kubernetes/controller-manager.conf"
[kubeconfig] Wrote KubeConfig file to disk: "/etc/kubernetes/scheduler.conf"

</pre>


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

4. View services run in docker containers
<pre>
 docker ps
 
</pre>

<pre>

CONTAINER ID        IMAGE                                      COMMAND                  CREATED             STATUS              PORTS               NAMES
3f36fa3b8ca9        e073a55c288b                               "/usr/local/bin/kube-"   3 minutes ago       Up 3 minutes                            k8s_kube-proxy_kube-proxy-2zz3c_kube-system_9b5d3f6b-4339-11e7-9c87-1245c810729c_0
636eeb59c65d        gcr.io/google_containers/pause-amd64:3.0   "/pause"                 3 minutes ago       Up 3 minutes                            k8s_POD_kube-proxy-2zz3c_kube-system_9b5d3f6b-4339-11e7-9c87-1245c810729c_0
a7a009571293        1fab9be555e1                               "kube-scheduler --add"   3 minutes ago       Up 3 minutes                            k8s_kube-scheduler_kube-scheduler-ip-172-31-55-195_kube-system_3145edd89dab0492bdacc0dd589d0e90_0
68036ae7eb80        0ea16a85ac34                               "kube-controller-mana"   3 minutes ago       Up 3 minutes                            k8s_kube-controller-manager_kube-controller-manager-ip-172-31-55-195_kube-system_41b2b954e975287b092374643452cbe7_0
4c5d2ac17262        4e3810a19a64                               "kube-apiserver --ins"   3 minutes ago       Up 3 minutes                            k8s_kube-apiserver_kube-apiserver-ip-172-31-55-195_kube-system_8a057404702915f5e1a513e09c31cd1a_0
1688a8a18263        243830dae7dd                               "etcd --listen-client"   3 minutes ago       Up 3 minutes                            k8s_etcd_etcd-ip-172-31-55-195_kube-system_7075157cfd4524dbe0951e00a8e3129e_0
f2eebb9e731a        gcr.io/google_containers/pause-amd64:3.0   "/pause"                 3 minutes ago       Up 3 minutes                            k8s_POD_kube-scheduler-ip-172-31-55-195_kube-system_3145edd89dab0492bdacc0dd589d0e90_0
eec3a7bcda2a        gcr.io/google_containers/pause-amd64:3.0   "/pause"                 3 minutes ago       Up 3 minutes                            k8s_POD_kube-apiserver-ip-172-31-55-195_kube-system_8a057404702915f5e1a513e09c31cd1a_0
b9eeaeac1cea        gcr.io/google_containers/pause-amd64:3.0   "/pause"                 3 minutes ago       Up 3 minutes                            k8s_POD_kube-controller-manager-ip-172-31-55-195_kube-system_41b2b954e975287b092374643452cbe7_0
db2e71d6c062        gcr.io/google_containers/pause-amd64:3.0   "/pause"                 3 min

</pre>
