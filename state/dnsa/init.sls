include:
  - .packages
  - .files

service-running-bind9:
  service.running:
    - name: bind9
    - enable: true
    - reload: true
    - watch:
      - file: /etc/bind/db.lab.pwned.com
      - file: /etc/bind/named.conf.local
