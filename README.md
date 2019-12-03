
For kubernetes command test </br>
1. kubectl version #show all client and server side versions </br>
2. kubectl config view #show configurations stored in <UserHome>/.kube/config </br>
3. kubectl config use-context ec01 #use ec01 context, this context is bind to a namespace, in this case the namespaces are isolated. </br>
4. kubectl config set-context ec02 --namespace=ec02 --cluster=ec1 --user=I075885@ec1  #create new context
5. kubectl get namespaces --show-labels  #show all namespaces with the labels. </br>
6. kubectl delete namespace ec01 #delete the namespace. </br>
7. kubectl create namespace ec02 #create new ec02 namespace. </br>
8. kubectl get pods #get all pods in curremt context/namespace. </br>
9. kubectl get deployment # get all deployments in this context/namespace. </br>
10. kubectl exec -it mysql-fb75876c6-c9nfk -- /bin/sh  # execute shell command in the pod. </br>
11. kubectl expose deployment nginx --port 80 # expose the 80 port in nginx deployment, still need to test. </br>
12. kubectl create deployment nginx --image=nginx    # create the nginx deployment. </br>
13. kubectl get Nodes  # get all nodes. </br>
14. kubectl -n kube-system edit configmap kube-dns    #edit kube-dns configmap, still need to understand    </br> 
15. kubectl proxy #start a proxy to route to localhost:8001 </br>
16. 
