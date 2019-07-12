{% set vault_version = '1.1.2' %}

vault:
  archive.extracted:
    - name: /usr/local/bin/
    - source: https://releases.hashicorp.com/vault/{{ vault_version }}/vault_{{ vault_version }}_linux_amd64.zip
    - source_hash: https://releases.hashicorp.com/vault/{{vault_version}}/vault_{{vault_version}}_SHA256SUMS
    - archive_format: zip
    - if_missing: /usr/local/bin/vault
    - source_hash_update: True
    - enforce_toplevel: False
  file.managed:
    - name: /usr/local/bin/vault
    - mode: '0755'
    - require:
      - archive: vault
