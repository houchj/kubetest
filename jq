{
    "apiVersion": "v1",
    "items": [
        {
            "apiVersion": "v1",
            "kind": "Node",
            "metadata": {
                "annotations": {
                    "flannel.alpha.coreos.com/backend-data": "null",
                    "flannel.alpha.coreos.com/backend-type": "host-gw",
                    "flannel.alpha.coreos.com/kube-subnet-manager": "true",
                    "flannel.alpha.coreos.com/public-ip": "10.180.0.15",
                    "node.alpha.kubernetes.io/ttl": "0",
                    "volumes.kubernetes.io/controller-managed-attach-detach": "true"
                },
                "creationTimestamp": "2019-11-19T08:18:39Z",
                "labels": {
                    "beta.kubernetes.io/arch": "amd64",
                    "beta.kubernetes.io/instance-type": "30",
                    "beta.kubernetes.io/os": "linux",
                    "ccloud.sap.com/nodepool": "p1",
                    "failure-domain.beta.kubernetes.io/region": "eu-nl-1",
                    "failure-domain.beta.kubernetes.io/zone": "eu-nl-1a",
                    "kubernetes.io/hostname": "ec1-p1-686bn"
                },
                "name": "ec1-p1-686bn",
                "resourceVersion": "561221",
                "selfLink": "/api/v1/nodes/ec1-p1-686bn",
                "uid": "311fe5b4-0aa5-11ea-8f14-0a58c0a8054c"
            },
            "spec": {
                "podCIDR": "100.100.1.0/24",
                "providerID": "openstack:///175ad807-7d79-4fde-883d-afb9465dd290"
            },
            "status": {
                "addresses": [
                    {
                        "address": "10.180.0.15",
                        "type": "InternalIP"
                    },
                    {
                        "address": "ec1-p1-686bn",
                        "type": "Hostname"
                    }
                ],
                "allocatable": {
                    "cpu": "4",
                    "ephemeral-storage": "57690677972",
                    "hugepages-1Gi": "0",
                    "hugepages-2Mi": "0",
                    "memory": "3920716Ki",
                    "pods": "110"
                },
                "capacity": {
                    "cpu": "4",
                    "ephemeral-storage": "62598392Ki",
                    "hugepages-1Gi": "0",
                    "hugepages-2Mi": "0",
                    "memory": "4023116Ki",
                    "pods": "110"
                },
                "conditions": [
                    {
                        "lastHeartbeatTime": "2019-12-03T07:50:16Z",
                        "lastTransitionTime": null,
                        "reason": "RedirectOK",
                        "status": "False",
                        "type": "RouteBroken"
                    },
                    {
                        "lastHeartbeatTime": "2019-11-19T08:18:54Z",
                        "lastTransitionTime": "2019-11-19T08:18:54Z",
                        "message": "RouteController created a route",
                        "reason": "RouteCreated",
                        "status": "False",
                        "type": "NetworkUnavailable"
                    },
                    {
                        "lastHeartbeatTime": "2019-12-03T07:51:03Z",
                        "lastTransitionTime": "2019-11-19T08:18:39Z",
                        "message": "kubelet has sufficient disk space available",
                        "reason": "KubeletHasSufficientDisk",
                        "status": "False",
                        "type": "OutOfDisk"
                    },
                    {
                        "lastHeartbeatTime": "2019-12-03T07:51:03Z",
                        "lastTransitionTime": "2019-11-19T08:18:39Z",
                        "message": "kubelet has sufficient memory available",
                        "reason": "KubeletHasSufficientMemory",
                        "status": "False",
                        "type": "MemoryPressure"
                    },
                    {
                        "lastHeartbeatTime": "2019-12-03T07:51:03Z",
                        "lastTransitionTime": "2019-11-19T08:18:39Z",
                        "message": "kubelet has no disk pressure",
                        "reason": "KubeletHasNoDiskPressure",
                        "status": "False",
                        "type": "DiskPressure"
                    },
                    {
                        "lastHeartbeatTime": "2019-12-03T07:51:03Z",
                        "lastTransitionTime": "2019-11-19T08:18:39Z",
                        "message": "kubelet has sufficient PID available",
                        "reason": "KubeletHasSufficientPID",
                        "status": "False",
                        "type": "PIDPressure"
                    },
                    {
                        "lastHeartbeatTime": "2019-12-03T07:51:03Z",
                        "lastTransitionTime": "2019-11-27T21:19:41Z",
                        "message": "kubelet is posting ready status",
                        "reason": "KubeletReady",
                        "status": "True",
                        "type": "Ready"
                    }
                ],
                "daemonEndpoints": {
                    "kubeletEndpoint": {
                        "Port": 10250
                    }
                },
                "images": [
                    {
                        "names": [
                            "mysql@sha256:411cb46904b646d1260e075505ee75d7457511412011eb03928e956eac1c0bf9",
                            "mysql:5.6"
                        ],
                        "sizeBytes": 302446311
                    },
                    {
                        "names": [
                            "nginx@sha256:9916837e6b165e967e2beb5a586b1c980084d08eb3b3d7f79178a0c79426d880"
                        ],
                        "sizeBytes": 126346569
                    },
                    {
                        "names": [
                            "nginx@sha256:50cf965a6e08ec5784009d0fccb380fc479826b6e0e65684d9879170a9df8566",
                            "nginx:latest"
                        ],
                        "sizeBytes": 126323486
                    },
                    {
                        "names": [
                            "nginx@sha256:e3456c851a152494c3e4ff5fcc26f240206abac0c9d794affb40e0714846c451",
                            "nginx:1.7.9"
                        ],
                        "sizeBytes": 91664166
                    },
                    {
                        "names": [
                            "sapcc/k8s-dns-kube-dns-amd64@sha256:618a82fa66cf0c75e4753369a6999032372be7308866fc9afb381789b1e5ad52",
                            "sapcc/k8s-dns-kube-dns-amd64:1.14.13"
                        ],
                        "sizeBytes": 51157394
                    },
                    {
                        "names": [
                            "k8s.gcr.io/cluster-proportional-autoscaler-amd64@sha256:0abeb6a79ad5aec10e920110446a97fb75180da8680094acb6715de62507f4b0",
                            "k8s.gcr.io/cluster-proportional-autoscaler-amd64:1.6.0"
                        ],
                        "sizeBytes": 47668785
                    },
                    {
                        "names": [
                            "sapcc/k8s-dns-sidecar-amd64@sha256:cedc8fe2098dffc26d17f64061296b7aa54258a31513b6c52df271a98bb522b3",
                            "sapcc/k8s-dns-sidecar-amd64:1.14.13"
                        ],
                        "sizeBytes": 42852039
                    },
                    {
                        "names": [
                            "sapcc/k8s-dns-dnsmasq-nanny-amd64@sha256:45df3e8e0c551bd0c79cdba48ae6677f817971dcbd1eeed7fd1f9a35118410e4",
                            "sapcc/k8s-dns-dnsmasq-nanny-amd64:1.14.13"
                        ],
                        "sizeBytes": 41372492
                    },
                    {
                        "names": [
                            "sapcc/pause-amd64@sha256:fcaff905397ba63fd376d0c3019f1f1cb6e7506131389edbcb3d22719f1ae54d",
                            "sapcc/pause-amd64:3.1"
                        ],
                        "sizeBytes": 742472
                    }
                ],
                "nodeInfo": {
                    "architecture": "amd64",
                    "bootID": "1e923416-0bec-49d8-84ec-9749fd1b3418",
                    "containerRuntimeVersion": "docker://18.6.3",
                    "kernelVersion": "4.19.84-coreos",
                    "kubeProxyVersion": "v1.11.9",
                    "kubeletVersion": "v1.11.9",
                    "machineID": "311d208d75e74e41aec501372b30afeb",
                    "operatingSystem": "linux",
                    "osImage": "Container Linux by CoreOS 2247.7.0 (Rhyolite)",
                    "systemUUID": "72691e42-f32a-5e17-eea7-1f54cb8ee0ba"
                }
            }
        }
    ],
    "kind": "List",
    "metadata": {
        "resourceVersion": "",
        "selfLink": ""
    }
}
