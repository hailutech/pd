# After we created the the nginx.deployment.yaml we will run the following commands

#let's run the deployment yaml using kubectl with the --save-config option so it will 
#include the annotation in the configuration for compare later when update
kubectl create -f nginx.deployment.yaml --save-config

#Verify if the deployment is created
kubectl get all

#Describe the deployment pd-nginx
kubectl describe deployment pd-nginx

#View the deployment - I expect to view the pd-nginx as a name which I have provided on the depdloyment yaml
kubectl get deployment

#View the labels in our case we will expect to see app=pd-nginx
kubectl get deployment --show-labels

#We can also verify if we know the lable before hand
kubectl get deployment -l app=pd-nginx

#To scale up or down we can imperatively specify replicas as --replicas=[number of pods]
kubectl scale -f nginx.deployment.yml --replicas=3

#Verify 
kubectl get all