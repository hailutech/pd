# Readme

<p>In this exercise I will use <strong>Kubernetes</strong> platform to manage ngnix containers Pods, Deployment, and Service feature to load balance.</p>

<p>I have used Docker Desktop to run the same code on my local</p>

<p>I used <strong>kubectl</strong> as a tool to imperatively run commands on a terminal against Kubernetes clusters, pods, deployments, services, etc.</p>

<p>I used the container image <strong>nginx:alpine</strong> (latest release), a high-performance reverse proxy server, (from https://hub.docker.com/_/nginx?tab=tags&page=1&ordering=last_updated). the nginx:alpine:3.10 release is no more available on docker hub.</p>

<p>I have created the necessary yaml files for deployment and service configurations in order to achieve requirement of the excercise. I have included kubectl commands  in a bash file.</p> 

<p>To get the configuations right, once you clone the code to your computer. Using the terminal swithch to the Deployments folder first and sequentially run the kubctl commands provided in nginx.deployment.sh file. Then Switch to the Services folder and sequentially run the kubectl commands in teh nginx.service.sh file.</p>

##High availablilty: 
Clusters provisioned using kubernetes are highly available. Pods in Kubernetes deployments are self healing meaning when a pod goes down another one automatically provisioned and server the purpose. Pods health and readiness can be declaratively configured in a pod's container specification. 
Pods are ephemeral, they live and die. When one pode from a luster goes down (dies) the deployment will spinup another one with same configuration but different ipaddress. 
Kubernetes yaml configurations has labels in their metadata declaration. The labels are very useful to configure the different Services - clusterIp, NodePort, LoadBalancer or ExternalName.

##Kubernetes Capacity - What Loads could spinup will handle:
CPU and Memory are the main driving factors to planning capacity of Kubernetes Clusters. As long as we have enough of these resources we can scale up our cluster. We can plan deployments and services as much as it is required. There are also tools such as Sysdig that we can use to assess the resouces and recommend the right siezes to our Pods, Deployments, and Services. 

