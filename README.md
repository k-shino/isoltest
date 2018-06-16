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

```
cd /Users/sinohara/Documents/8.Codes/docker-registry/examples/auth-disabled
docker-compose up -d

cd /Users/sinohara/Documents/8.Codes/isoltest

kubectl create -f isoltest.yml
kubectl delete -f isoltest.yml
```
