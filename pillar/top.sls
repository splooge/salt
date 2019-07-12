{% set srvtype = salt['grains.get']('srvtype','') %}
base:
  '*':
    - global
{% if srvtype|length >0 %}
    - {{ srvtype }}
{% endif %}
