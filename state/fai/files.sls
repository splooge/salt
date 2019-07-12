fai-project-repo:
  pkgrepo.managed:
    - name: deb http://archive.ubuntu.com/ubuntu xenial
    - file: /etc/apt/sources.list.d/fai-project-repo.list
    - comps: universe
    - architectures: amd64
    - clean_file: True
    - refresh: false
