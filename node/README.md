# node-exporter 

## 설치방법
```
wget https://github.com/prometheus/node_exporter/releases/download/v1.1.2/node_exporter-1.1.2.linux-amd64.tar.gz

tar xvfz node_exporter-1.1.2.linux-amd64.tar.gz
cd node_exporter-1.1.2.linux-amd64/
./node_exporter
```

``
node-exporter는 docker로 띄우는 것을 권장하지 않음. 
도커는 머신의 내부 동작과 컨티이너를 격리시키려고 하기 때문에 node-exporter에서 내부 동작 결과가 잘 동작하지 않을 수 있기 때문
``

## Reference
- https://prometheus.io/docs/guides/node-exporter/
