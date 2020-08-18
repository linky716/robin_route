#! /bin/bash


#create leo11 nic
/root/kube-ovs-create.sh k8s_leo11_leo11 leo11_0 02:42:ac:11:01:00 100 10.0.11.10/24 100
/root/kube-ovs-create.sh k8s_leo11_leo11 leo11_1 02:42:ac:11:02:00 200 10.0.22.10/24 101
/root/kube-ovs-create.sh k8s_leo11_leo11 leo11_2 02:42:ac:11:03:00 300 10.0.33.10/24 102 
/root/kube-ovs-create.sh k8s_leo11_leo11 leo11_3 02:42:ac:11:04:00 400 10.0.44.10/24 103 
/root/kube-ovs-create.sh k8s_leo11_leo11 leo11_4 02:42:ac:11:05:00 500 10.0.55.10/24 104

#create leo2 nic
/root/kube-ovs-create.sh k8s_leo12_leo12 leo12_0 02:42:ac:11:01:01 101 10.0.11.12/24 100
/root/kube-ovs-create.sh k8s_leo12_leo12 leo12_1 02:42:ac:11:02:01 201 10.0.22.12/24 101
/root/kube-ovs-create.sh k8s_leo12_leo12 leo12_2 02:42:ac:11:03:01 301 10.0.33.12/24 102 
/root/kube-ovs-create.sh k8s_leo12_leo12 leo12_3 02:42:ac:11:04:01 401 10.0.44.12/24 103 
/root/kube-ovs-create.sh k8s_leo12_leo12 leo12_4 02:42:ac:11:05:01 501 10.0.55.12/24 104


#create leo13 nic
/root/kube-ovs-create.sh k8s_leo13_leo13 leo13_0 02:42:ac:11:01:02 102 10.0.11.13/24 100
/root/kube-ovs-create.sh k8s_leo13_leo13 leo13_1 02:42:ac:11:02:02 202 10.0.22.13/24 101
/root/kube-ovs-create.sh k8s_leo13_leo13 leo13_2 02:42:ac:11:03:02 302 10.0.33.13/24 102 
/root/kube-ovs-create.sh k8s_leo13_leo13 leo13_3 02:42:ac:11:04:02 402 10.0.44.13/24 103 
/root/kube-ovs-create.sh k8s_leo13_leo13 leo13_4 02:42:ac:11:05:02 502 10.0.55.13/24 104


#create leo14 nic
/root/kube-ovs-create.sh k8s_leo14_leo14 leo14_0 02:42:ac:11:01:03 103 10.0.11.14/24 100
/root/kube-ovs-create.sh k8s_leo14_leo14 leo14_1 02:42:ac:11:02:03 203 10.0.22.14/24 101
/root/kube-ovs-create.sh k8s_leo14_leo14 leo14_2 02:42:ac:11:03:03 303 10.0.33.14/24 102 
/root/kube-ovs-create.sh k8s_leo14_leo14 leo14_3 02:42:ac:11:04:03 403 10.0.44.14/24 103 
/root/kube-ovs-create.sh k8s_leo14_leo14 leo14_4 02:42:ac:11:05:03 503 10.0.55.14/24 104


#create leo15 nic
/root/kube-ovs-create.sh k8s_leo15_leo15 leo15_0 02:42:ac:11:01:04 104 10.0.11.15/24 100
/root/kube-ovs-create.sh k8s_leo15_leo15 leo15_1 02:42:ac:11:02:04 204 10.0.22.15/24 101
/root/kube-ovs-create.sh k8s_leo15_leo15 leo15_2 02:42:ac:11:03:04 304 10.0.33.15/24 102 
/root/kube-ovs-create.sh k8s_leo15_leo15 leo15_3 02:42:ac:11:04:04 404 10.0.44.15/24 103 
/root/kube-ovs-create.sh k8s_leo15_leo15 leo15_4 02:42:ac:11:05:04 504 10.0.55.15/24 104



#create geo1 nic
/root/kube-ovs-create.sh k8s_geo1_geo1 geo1_0 02:42:ac:11:00:10 10 10.0.1.10/24 107
/root/kube-ovs-create.sh k8s_geo1_geo1 geo1_1 02:42:ac:11:00:11 11 10.0.5.11/24 107
/root/kube-ovs-create.sh k8s_geo1_geo1 geo1_2 02:42:ac:11:00:12 12 10.0.11.11/24 100 


#create geo1 nic
#/root/kube-ovs-create.sh k8s_geo1_geo1 geo1_0 02:42:ac:11:00:10 10 10.0.1.10/24 107
#/root/kube-ovs-create.sh k8s_geo1_geo1 geo1_1 02:42:ac:11:00:11 11 10.0.6.11/24 107
#/root/kube-ovs-create.sh k8s_geo1_geo1 geo1_2 02:42:ac:11:00:12 12 10.0.11.11/24 100 


#create geo2 nic
/root/kube-ovs-create.sh k8s_geo2_geo2 geo2_0 02:42:ac:11:00:20 20 10.0.1.11/24 107
/root/kube-ovs-create.sh k8s_geo2_geo2 geo2_1 02:42:ac:11:00:21 21 10.0.2.10/24 107
/root/kube-ovs-create.sh k8s_geo2_geo2 geo2_2 02:42:ac:11:00:22 22 10.0.22.11/24 101 

#create geo3 nic
/root/kube-ovs-create.sh k8s_geo3_geo3 geo3_0 02:42:ac:11:00:30 30 10.0.2.11/24 107
/root/kube-ovs-create.sh k8s_geo3_geo3 geo3_1 02:42:ac:11:00:31 31 10.0.3.10/24 107
/root/kube-ovs-create.sh k8s_geo3_geo3 geo3_2 02:42:ac:11:00:32 32 10.0.33.11/24 102 

#create geo4 nic
/root/kube-ovs-create.sh k8s_geo4_geo4 geo4_0 02:42:ac:11:00:40 40 10.0.3.11/24 107
/root/kube-ovs-create.sh k8s_geo4_geo4 geo4_1 02:42:ac:11:00:41 41 10.0.4.10/24  107
/root/kube-ovs-create.sh k8s_geo4_geo4 geo4_2 02:42:ac:11:00:42 42 10.0.44.11/24 103 

#:<<BLOCK
#create geo5 nic
/root/kube-ovs-create.sh k8s_geo5_geo5 geo5_0 02:42:ac:11:00:50 50 10.0.4.11/24 107
/root/kube-ovs-create.sh k8s_geo5_geo5 geo5_1 02:42:ac:11:00:51 51 10.0.5.10/24 107
/root/kube-ovs-create.sh k8s_geo5_geo5 geo5_2 02:42:ac:11:03:52 52 10.0.55.11/24 104 
#BLOCK
:<<BLOCK
#create geo5 nic
/root/kube-ovs-create.sh k8s_geo5_geo5 geo5_0 02:42:ac:11:00:50 50 10.0.4.11/24 107
/root/kube-ovs-create.sh k8s_geo5_geo5 geo5_1 02:42:ac:11:00:51 51 10.0.5.10/24 107
/root/kube-ovs-create.sh k8s_geo5_geo5 geo5_2 02:42:ac:11:03:52 52 10.0.55.11/24 104 


#create geo6 nic
/root/kube-ovs-create.sh k8s_geo6_geo6 geo6_0 02:42:ac:11:00:60 60 10.0.5.11/24 107
/root/kube-ovs-create.sh k8s_geo6_geo6 geo6_1 02:42:ac:11:00:61 61 10.0.6.10/24 107
/root/kube-ovs-create.sh k8s_geo6_geo6 geo6_2 02:42:ac:11:03:62 62 10.0.66.11/24 105 
BLOCK



