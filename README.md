
For kubernetes command test </br>
1. kubectl version #show all client and server side versions </br>
2. kubectl config view #show configurations stored in <UserHome>/.kube/config </br>
3. kubectl config use-context ec01 #use ec01 context, this context is bind to a namespace, in this case the namespaces are isolated. </br>
4. kubectl config set-context ec02 --namespace=ec02 --cluster=ec1 --user=I075885@ec1  #create new context
5. kubectl get namespaces #show all namespaces. </br>
6. kubectl delete namespace ec01 #delete the namespace. </br>
7. kubectl create namespace ec02 #create new ec02 namespace. </br>
8. kubectl get pods #get all pods in curremt context/namespace. </br>
9. kubectl get deployment # get all deployments in this context/namespace. </br>
10. 
