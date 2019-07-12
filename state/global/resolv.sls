# reminders

# {% for nameserver in salt['pillar.get']('dns:servers') %}
#   - nameserver: {{ nameserver }}
# {% endfor %}

# fuckoff-resolvconf:
#   file.managed:
#     - name: /etc/resolv.conf
#     - contents:
#       - search lab.pwned.com
# {% for nameserver in pillar.get('dns:servers') %}
#       - nameserver {{ nameserver }}
# {% endfor %}

