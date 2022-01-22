This demo helps you to understand the creation of VPC, internet gateway, EC2, securty grp, EBS volume using terraform


Note: create sshkey before running this code. eg: ssh-keygen -f mykey

after creating ebs volume, we need to format and mount the new volume before use

manual method for mounting volume, After ssh into new servers,

#mkfs.ext4 /dev/xvdh
#mkdir /data
#mount /dev/xvdh /data
#df -h -> we can see the new voume
#unmount /data -> to unmount the volume

For permanent mount, add a entry to fstab

#vi /etc/fstab
#/dev/xvdh /data ext4 defaults 0 0
#mount /data