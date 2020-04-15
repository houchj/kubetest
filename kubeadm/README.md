About kubeadm installation:

	1. Follow https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/
	2. Follow: https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/
		a. sudo kubeadm init --pod-network-cidr=192.168.0.0/16
		mkdir -p $HOME/.kube
		sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
		sudo chown $(id -u):$(id -g) $HOME/.kube/config
		
My execution record:
To start using your cluster, you need to run the following as a regular user:

  mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config

You should now deploy a pod network to the cluster.
Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
  https://kubernetes.io/docs/concepts/cluster-administration/addons/

Then you can join any number of worker nodes by running the following on each as root:

kubeadm join 10.180.0.20:6443 --token 49cvvz.wxcjx26q7j3bzhg0 \
    --discovery-token-ca-cert-hash sha256:8cdafa8b594a059d249912caaa3c2564b50135869603e8c0dd6968645bf683f2

Dashboard token:
eyJhbGciOiJSUzI1NiIsImtpZCI6IjFBeGR0ZEphb2FWSDVPLUxteUl6LWpaZkkwcWZFeWRhc1MzNUc4X2pJRkEifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJrdWJlcm5ldGVzLWRhc2hib2FyZCIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VjcmV0Lm5hbWUiOiJkZWZhdWx0LXRva2VuLWpjeGNuIiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQubmFtZSI6ImRlZmF1bHQiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC51aWQiOiI5YzNlYWY5Ny02ODY4LTRiMTYtOTczZi1lMmMyYjIxYmE0YTEiLCJzdWIiOiJzeXN0ZW06c2VydmljZWFjY291bnQ6a3ViZXJuZXRlcy1kYXNoYm9hcmQ6ZGVmYXVsdCJ9.reKoyTXy84YTl0Kq7zMoWn7Dcqg7sZpiYXNgH_doZLDpOcb-z-zBdv-zobN0XqTTYdIEylGG9lBEC1YkaDqbRD2KwklcKYhTYk-OxUdbl3cbHo4Z8opYrqrYAOTrsbpSWKrsNmfWqGtY8wsGaBrQWZa4-1M_KmAMI34Gg2TWsQOmLiceKBU8bM8K99TeLqzE2tQHw0VCED5BXQPOieP_UIG3d2Ys7NgginrXz8NO4S9Ay-iW7uAHGredBsjCJc8R38XI9prJGW4oy3aXJdlYIu0iTxsmjUC3vMnvX7d8hoI1PcciHzdMH5-6PN9-g3Dh6K8MhIw0hGGZdm2vY5zEyA


	kubectl taint nodes --all node-role.kubernetes.io/master-
	
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-rc7/aio/deploy/recommended.yaml
	
	
As RBAC is default enabled by kubeadm, so need this to grant all service accounts cluster-admin role:
kubectl create clusterrolebinding permissive-binding \
  --clusterrole=cluster-admin \
  --user=admin \
  --user=kubelet \
  --group=system:serviceaccounts

From <https://kubernetes.io/docs/reference/access-authn-authz/rbac/> 


Create storageclass:
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: local-storage
provisioner: kubernetes.io/no-provisioner
volumeBindingMode: WaitForFirstConsumer

From <https://kubernetes.io/docs/concepts/storage/storage-classes/#local> 

  kubectl patch storageclass local-storage -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'

Create PV(create the path on host first):
kind: PersistentVolume
apiVersion: v1
metadata:
  name: local-pv-data
  labels:
    type: local
spec:
  storageClassName: local-storage
  capacity:
    storage: 12Gi
  local:
    path: /data/kube-localstorage
  persistentVolumeReclaimPolicy: Retain
  accessModes:
    - ReadWriteOnce
  storageClassName: local-storage
  nodeAffinity:
    required:
      nodeSelectorTerms:
        - matchExpressions:
          - key: kubernetes.io/hostname
            operator: In
            values:
              - eclocalkube





kubectl port-forward demo-cf-7d77d968b5-bksph 8080:8080 --address 0.0.0.0





