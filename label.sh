kubectl  label node node01 es/master=true
kubectl  label node node02 es/master=true
kubectl  label node node03 es/master=true
kubectl  label node node01 es/ingest=true
kubectl  label node node02 es/ingest=true
kubectl  label node node01 es/data=true
kubectl  label node node02 es/data=true
kubectl  label node master01 beta.kubernetes.io/fluentd-ds-ready=true
kubectl  label node master02 beta.kubernetes.io/fluentd-ds-ready=true
kubectl  label node master03 beta.kubernetes.io/fluentd-ds-ready=true
kubectl  label node node01 beta.kubernetes.io/fluentd-ds-ready=true
kubectl  label node node02 beta.kubernetes.io/fluentd-ds-ready=true
kubectl  label node node03 beta.kubernetes.io/fluentd-ds-ready=true
kubectl  label node <nodename> beta.kubernetes.io/fluentd-ds-ready: "true"
