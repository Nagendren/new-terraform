# software provisioning

This demo explains about provisioner file, remote-exec. Using provisioner we can perform actions inside newly created server. 

- before running terraform apply , create ssh keys
- run "ssh-keygen -f mykey " to generate the keys

_new servers are created in default Security Group (SG). we need to open ssh port in the SG for "remote-exec"_

# Note: configuration management is not possible using this provisioner but ansible, chef and puppet can be integrated.
