{#
  Don't update apt translations
  Configure sources.list and sources.list.d/
#}

{% set lsb_distrib_codename = salt['grains.get']('lsb_distrib_codename','') %}
{% set lsb_distrib_release = salt['grains.get']('lsb_distrib_release','') %}

disable-apt-translations:
  file.managed:
    - name: /etc/apt/apt.conf.d/99translations
    - source: salt://global/apt/sources/99translations

managed-apt-sources:
  file.managed:
    - name: /etc/apt/sources.list
    - source: salt://global/apt/sources/sources.list

{{ lsb_distrib_codename }}-repo:
  pkgrepo.managed:
    - name: deb http://{{ pillar['fai']['host'] }}/ubuntu {{ lsb_distrib_codename }}
    - file: /etc/apt/sources.list.d/{{ lsb_distrib_codename }}-repo.list
    - comps: main, restricted, universe
    - architectures: amd64
    - clean_file: True
    - refresh: False

{{ lsb_distrib_codename }}-updates-repo:
  pkgrepo.managed:
    - name: deb http://{{ pillar['fai']['host'] }}/ubuntu {{ lsb_distrib_codename }}-updates
    - file: /etc/apt/sources.list.d/{{ lsb_distrib_codename }}-updates-repo.list
    - comps: main, restricted, universe
    - architectures: amd64
    - clean_file: True
    - refresh: False

{{ lsb_distrib_codename }}-security-repo:
  pkgrepo.managed:
    - name: deb http://{{ pillar['fai']['host'] }}/ubuntu {{ lsb_distrib_codename }}-security
    - file: /etc/apt/sources.list.d/{{ lsb_distrib_codename }}-security-repo.list
    - comps: main, restricted, universe
    - architectures: amd64
    - clean_file: True
    - refresh: False

{{ lsb_distrib_codename }}-saltstack-repo:
  pkgrepo.managed:
    - name: deb http://repo.saltstack.com/py3/ubuntu/{{ lsb_distrib_release }}/amd64/latest {{ lsb_distrib_codename }}
    - file: /etc/apt/sources.list.d/{{ lsb_distrib_codename }}-saltstack-repo.list
    - comps: main
    - architectures: amd64
    - clean_file: True
    - refresh: False
