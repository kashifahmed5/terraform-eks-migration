#!/bin/bash -xe

# Allow user supplied pre userdata code
${pre_userdata}



# Bootstrap and join the cluster
/etc/eks/bootstrap.sh --b64-cluster-ca '${cluster_auth_base64}' --kubelet-extra-args '--node-labels=nodegroup=spotfleet' --apiserver-endpoint '${endpoint}'  '${cluster_name}'

# Allow user supplied userdata code
${additional_userdata}