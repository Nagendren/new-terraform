before running terraform apply , create ssh keys

run "ssh-keygen -f mykey " to generate the keys

This demo explains about provisioner file, remote-exec. Using provisioner we can perform actions inside newly created server. 

Note: configuration management is not possible using this provisioner but ansible, chef and puppet can be integrated.
