# isoltest

## Containers:

### app-A

* iperf client load: 700MB/s
* stress 30% of CPU weight

### app-B

* iperf client load: 300MB/s
* stress 70% of CPU weight

### app-C

* iperf server

## How to use

### Prerequisites

* docker private registry runs at localhost:5000

If you doesn't have it, execute following command (on Mac OS X)
```
curl -Ls https://github.com/mkuchin/docker-registry-web/releases/download/v0.1.2/examples.tar.gz | tar -xzv
mv examples/auth-disabled/ ./docker-registry
cd docker-registry/
docker-compose up -d
```

### build apps

```
docker-compose build
docker-compose push
```

### deploty a system

```
kubectl create -f isoltest.yml
kubectl delete -f isoltest.yml
```

### use Sense

go to http://localhost:5602/app/sense

### use grafana

go to http://localhost:3000
