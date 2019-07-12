install-haproxy-for-kubernetes-control-plane:
  pkg.installed:
    - pkgs:
      - haproxy

kubernetes-haproxy-cfg:
  file.managed:
    - name: /etc/haproxy/haproxy.cfg
    - source: salt://k8s-lb/sources/haproxy.cfg
    - user: root
    - group: root
    - mode: 644

service-running-haproxy:
  service.running:
    - name: haproxy
    - enable: true
    - reload: true
    - watch:
      - file: /etc/haproxy/haproxy.cfg
