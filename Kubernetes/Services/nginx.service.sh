# to configure a load balancer service. we have created the nginx.service.yml file.
#
#View services we already have
kubectl get services

#Create a Service
kubectl create -f nginx.service.yml --save-config 

#to update a Service with updated yaml file we can use apply with -f filename
kubectl apply -f nginx.service.yml

#we can verify if the pd-nginx-loadbalancer service is created. 
kubectl get services






