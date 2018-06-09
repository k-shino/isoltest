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
create -f isoltest.yml
delete pod isoltest
```
