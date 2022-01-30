# create EBS volume

In this demo we create,
- EBS volume
- VPC
- Subnets
- Internet gateway
- EC2
- Security Group

# Note: 
- create sshkey before running this code. eg: ssh-keygen -f mykey
- whitelist your ip in security-group.tf


> after creating ebs volume, we need to format and mount the new volume before use

> below listed commands are manual method for mounting volume, After ssh into new servers use below commands,

```python
mkfs.ext4 /dev/xvdh
mkdir /data
mount /dev/xvdh /data
df -h -> we can see the new voume
unmount /data -> to unmount the volume

For permanent mount, add a entry to fstab

vi /etc/fstab
/dev/xvdh /data ext4 defaults 0 0

mount /data
