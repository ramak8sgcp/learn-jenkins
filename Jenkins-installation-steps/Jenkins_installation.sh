#Step:1 ##Make sure both server and agent server should have t3.small, 50gb storage

#Step2: # Resize EBS Storage

check the partitions
```
lsblk
```

Use a tool like growpartition (nvme0n1p4) to use the remaining unallocated space on the disk.
```
sudo grort to resize the existing partition to fill the available space.This will resize the fourth sudo growpart /dev/nvme0n1 4
```

Extend the Logical Volumes
Decide how much space to allocate to each logical volume. For example, to extend both the root and /var logical volumes:

```
sudo lvextend -l +50%FREE /dev/RootVG/rootVol
sudo lvextend -l +50%FREE /dev/RootVG/varVol
```

After extending the logical volumes, resize the filesystems to utilize the additional space.

For the root filesystem:

```
sudo xfs_growfs /
```

For the /var filesystem:

```
sudo xfs_growfs /var
```

#Step3:##In Jenkins server below steps has to do
sudo curl -o /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
#sudo dnf upgrade
# Add required dependencies for the jenkins package
sudo dnf install fontconfig java-17-openjdk -y
sudo dnf install jenkins -y
sudo systemctl daemon-reload
sudo systemctl start jenkins 
sudo systemctl enable jenkins


#Step4:##In Agent Java should be installed
sudo dnf install fontconfig java-17-openjdk -y