# K8s-EFK
k8s部署EFK

# 参考
https://www.qikqiak.com/k8s-book/docs/

https://www.kubernetes.org.cn/4278.html

https://github.com/pires/kubernetes-elasticsearch-cluster/tree/master

# 搭配方式
3个master，pod反亲和，标签节点亲和，hostpath（挂盘）

2个data，pod反亲和，标签节点亲和，hostpath（挂盘）

2个ingest，pod反亲和，标签节点亲和，hostpath（挂盘）

# 命名空间
es和kibana在default，fluentd在kube-system

kibana，fluentd，es-curator这三个的cm都需要根据不同命名空间修改es的host地址，当前是elasticsearch.default.svc.cluster.local

# 练习chart
好tm乱，先这样吧
helm install  --name es-clsuter \\

 --set namespace=log \\

 --set image=quay.io/pires/docker-elasticsearch-kubernetes \\

 --set tag=6.3.2 \\

 --set resources.requests.cpu=0.25 \\

 --set resources.limits.cpu=1 \\

 --set resources.requests.memory=512Mi \\

 --set resources.limits.memory=2Gi \\

 --set persistence=true \\

 --set volumes.hostPath.path=/data/es-master \\

 --set busybox.image=busybox \\

 --set busybox.tag=1.27.2 ./

