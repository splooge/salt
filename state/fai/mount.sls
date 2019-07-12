mnt-mirrors-ubuntu:
  file.directory:
    - name: /mnt/mirrors/ubuntu
    - user: root
    - group: root

nfs-ubuntu-mirror:
  mount.mounted:
    - device: 192.168.1.201:/volume1/ubuntu
    - fstype: nfs
    - mkmnt: True
    - name: /mnt/mirrors/ubuntu
