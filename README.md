```
root@ip-172-31-37-101:~# cat /var/log/bash-cni.log
+ case $CNI_COMMAND in
+ host_ifname=veth10.244.0.2
+ ip link add eth0 type veth peer name veth10.244.0.2
+ ip link set veth10.244.0.2 master cni0
+ ip link set veth10.244.0.2 up
++ basename /var/run/netns/cni-8b56ea29-d668-9be2-e94d-14616f3acf80
+ netns=cni-8b56ea29-d668-9be2-e94d-14616f3acf80
+ ip netns add cni-8b56ea29-d668-9be2-e94d-14616f3acf80
Cannot create namespace file "/run/netns/cni-8b56ea29-d668-9be2-e94d-14616f3acf80": File exists
+ ip link set eth0 netns cni-8b56ea29-d668-9be2-e94d-14616f3acf80
+ ip -n cni-8b56ea29-d668-9be2-e94d-14616f3acf80 address add 10.244.0.2/24 dev eth0
+ ip -n cni-8b56ea29-d668-9be2-e94d-14616f3acf80 link set eth0 up
+ ip -n cni-8b56ea29-d668-9be2-e94d-14616f3acf80 route add default via 10.244.0.1
+ cat
```
