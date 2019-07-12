kubernetes-notes:
  file.managed:
    - name: /home/manager/k8s-notes.txt
    - source: salt://k8s/sources/k8s-notes.txt
    - user: manager
    - group: manager
    - mode: 644
