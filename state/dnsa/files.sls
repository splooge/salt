dnsa-etc-bind-named-conf-local:
  file.managed:
    - name: /etc/bind/named.conf.local
    - source: salt://dnsa/sources/named.conf.local
    - user: root
    - group: bind
    - mode: 644

lab-pwned-com-zonefile:
  file.managed:
    - name: /etc/bind/db.lab.pwned.com
    - source: salt://dnsa/sources/db.lab.pwned.com
    - user: root
    - group: bind
    - mode: 644
