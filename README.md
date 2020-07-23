# k8s-es-cluster
k8s部署EFK

# 参考
https://www.qikqiak.com/k8s-book/docs/

https://www.kubernetes.org.cn/4278.html

https://github.com/pires/kubernetes-elasticsearch-cluster/tree/master

# 搭配方式
3个master，pod反亲和，标签节点亲和，hostpath

2个data，pod反亲和，标签节点亲和，hostpath

2个ingest，pod反亲和，标签节点亲和，hostpath

