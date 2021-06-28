# Readme

<p>In this exercise I will use <strong>Kubernetes</strong> platform to manage ngnix containers Pods, Deployment, and Service feature to load balance.</p>

<p>I have used Docker Desktop to run the same code on my local</p>

<p>I used <strong>kubectl</strong> as a tool to imperatively run commands on a terminal against Kubernetes clusters, pods, deployments, services, etc.</p>

<p>I used the container image <strong>nginx:alpine</strong> (latest release), a high-performance reverse proxy server, (from https://hub.docker.com/_/nginx?tab=tags&page=1&ordering=last_updated). the nginx:alpine:3.10 release is no more available on docker hub.</p>

<p>I have created the necessary yaml files for deployment and service configurations in order to achieve requirement of the excercise. I have included kubectl commands  in a bash file.</p> 

<p>To get the configuations right, once you clone the code to your computer. Using the terminal swithch to the Deployments folder first and sequentially run the kubctl commands provided in nginx.deployment.sh file. Then Switch to the Services folder and sequentially run the kubectl commands in teh nginx.service.sh file.</p>


