{% set lsb_distrib_codename = salt['grains.get']('lsb_distrib_codename','') %}

docker-repo:
  pkgrepo.managed:
    - name: deb https://download.docker.com/linux/ubuntu {{ lsb_distrib_codename  }}
    - file: /etc/apt/sources.list.d/{{ lsb_distrib_codename }}-docker-repo.list
    - key_url: https://download.docker.com/linux/ubuntu/gpg
    - architectures: amd64
    - comps: stable
    - clean_file: True

kubernetes-repo:
  pkgrepo.managed:
    - name: deb https://apt.kubernetes.io/ kubernetes-xenial
    - file: /etc/apt/sources.list.d/xenial-kubernetes-repo.list
    - key_url: https://packages.cloud.google.com/apt/doc/apt-key.gpg
    - architectures: amd64
    - comps: main
    - clean_file: True

remove-swap-from-fstab:
  file.line:
    - name: /etc/fstab
    - match: swap
    - mode: delete

kubernetes-disable-swap:
  cmd.run:
    - name: swapoff -a
    - onlyif: swapon | grep swap

kubernetes-delete-swapfile:
  file.absent:
    - name: /swap.img

etc-docker-daemon.json:
  file.managed:
    - name: /etc/docker/daemon.json
    - source: salt://k8s/sources/daemon.json
    - user: root
    - group: root
    - mode: 644

etc-systemd-system-docker.service.d:
  file.directory:
    - name: /etc/systemd/system/docker.service.d
    - user: root
    - group: root
    - dir_mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode

docker-install:
  pkg.installed:
    - pkgs:
      - docker-ce: 18.06.2~ce~3-0~ubuntu
      - docker-ce-cli
      - containerd.io

kubernetes-install:
  pkg.installed:
    - pkgs:
      - kubelet
      - kubeadm
      - kubectl
    - hold: True
