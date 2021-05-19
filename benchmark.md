# single terminal

run `ab -n 2000 -c 50 http://127.0.0.1:3000/`

```shell
Server Software:
Server Hostname:        127.0.0.1
Server Port:            3000

Document Path:          /
Document Length:        42 bytes

Concurrency Level:      50
Time taken for tests:   2.081 seconds
Complete requests:      2000
Failed requests:        0
Total transferred:      498000 bytes
HTML transferred:       84000 bytes
Requests per second:    961.16 [#/sec] (mean)
Time per request:       52.020 [ms] (mean)
Time per request:       1.040 [ms] (mean, across all concurrent requests)
Transfer rate:          233.72 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    1   0.8      1       6
Processing:    17   50  12.0     49      95
Waiting:       14   40  10.4     40      79
Total:         18   51  11.8     50      96

Percentage of the requests served within a certain time (ms)
  50%     50
  66%     54
  75%     57
  80%     60
  90%     65
  95%     73
  98%     80
  99%     86
 100%     96 (longest request)
```

## 2 terminals

run (at the same time) `ab -n 2000 -c 50 http://127.0.0.1:3000/`

**Terminal 1**

```shell
Server Software:
Server Hostname:        127.0.0.1
Server Port:            3000

Document Path:          /
Document Length:        42 bytes

Concurrency Level:      50
Time taken for tests:   3.273 seconds
Complete requests:      2000
Failed requests:        0
Total transferred:      498000 bytes
HTML transferred:       84000 bytes
Requests per second:    610.98 [#/sec] (mean)
Time per request:       81.835 [ms] (mean)
Time per request:       1.637 [ms] (mean, across all concurrent requests)
Transfer rate:          148.57 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    3   2.4      2      20
Processing:     8   79  17.5     77     146
Waiting:        3   64  15.7     63     131
Total:          8   81  17.2     79     147

Percentage of the requests served within a certain time (ms)
  50%     79
  66%     87
  75%     92
  80%     95
  90%    105
  95%    110
  98%    118
  99%    128
 100%    147 (longest request)
```

**Terminal 2**

```shell
Server Software:
Server Hostname:        127.0.0.1
Server Port:            3000

Document Path:          /
Document Length:        42 bytes

Concurrency Level:      50
Time taken for tests:   3.288 seconds
Complete requests:      2000
Failed requests:        0
Total transferred:      498000 bytes
HTML transferred:       84000 bytes
Requests per second:    608.27 [#/sec] (mean)
Time per request:       82.201 [ms] (mean)
Time per request:       1.644 [ms] (mean, across all concurrent requests)
Transfer rate:          147.91 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    3   2.5      2      22
Processing:     9   79  17.7     77     146
Waiting:        4   65  15.4     64     142
Total:         10   82  17.5     79     147

Percentage of the requests served within a certain time (ms)
  50%     79
  66%     86
  75%     93
  80%     97
  90%    105
  95%    111
  98%    119
  99%    125
 100%    147 (longest request)
```
