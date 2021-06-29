
## Bonus

### High availablilty: 
<p>Clusters provisioned using kubernetes are highly available. Pods in Kubernetes deployments are self healing meaning when a pod goes down another one automatically provisioned and server the purpose. Pods health and readiness can be declaratively configured in a pod's container specification. 
Pods are ephemeral, they live and die. When one pode from a luster goes down (dies) the deployment will spinup another one with same configuration but different ipaddress. </p>
<p>Kubernetes yaml configurations has labels in their metadata declaration. The labels are very useful to configure the different Services - clusterIp, NodePort, LoadBalancer or ExternalName.</p>

### Kubernetes Capacity - What Loads could spinup will handle:
<p>CPU and Memory are the main driving factors to planning capacity of Kubernetes Clusters. As long as we have enough of these resources we can scale up our cluster. We can plan deployments and services as much as it is required. Kubernetes deploys the pods and the workloads in worker nodes. A single cluster can manage up to 5,000 nodes. There are also tools such as <strong>Sysdig</strong> that we can use to assess the resouces and recommend the right siezes to our Pods, Deployments, and Services. </p>

### Security:
<p>The core constructs of Kubernetes security such as how authentication works for accessing the API server. In kubernetes API request passes through Authentication, Authorization and Admission control. </p>

<p>Authentication, a process of verifying and proving the identity for the api request. In kubernetes api request can come from several sources such as users via kubectl, service account via pods also from inside control plane services the scheduler and control manager, also from nodes kublet and kube-proxy. In kubernetes all need to be authenticated from Api Services. </p>

<p>There are several configurable authentication plugins, modules - Certificate, Basic Http, and Token. These could be constructed and configured to users and service accounts.</p>

<p>Autherization is the process of determining if the request is allowed to perform the action in the request sumitted. For autherization kubernetes provides configurable Roll-Based Access Control (RBAC), Attribute-Based Access Control (ABAC), and webhooks. These are authorization plugins enabled in the API server that provides more granural security. It is configurable through api opjects Role, and ClusterRole, RoleBinding  and ClusterRoleBinding. Allowing a subject (requester) - users, groups, or ServiceAccounts perform actions on resources using RESTful API semantics.</p>

<p>Admission control, Cluster administrators could configure additonal validation to cluster objects in the admission control which will run as webhooks.</p>




### References: 
1. Kubernetes in Production Best Practices (https://subscription.packtpub.com/book/cloud_and_networking/9781800202450)

2. Getting Started with Kubernetes - Third Edition (https://subscription.packtpub.com/book/virtualization_and_cloud/9781788994729)

3. Kubernetes and Docker - An Enterprise Guide  (https://subscription.packtpub.com/book/cloud_and_networking/9781839213403)

