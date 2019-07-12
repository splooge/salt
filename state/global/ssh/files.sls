manager-authorized-keys-file:
  ssh_auth.present:
    - user: manager
    - enc: ecdsa
    - comment: manager public key
    - name ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCwgDk4P6UCLMMqf/OP8VhLSmO6EHB1AekHM/PDu0Haa0sOl5UywtiPLK7coaJNQJ399apsEzUlxjk5rEblsHGb65y2f4YqVCMT11+pB59WWUoEmWRmn/HJAyBX5uA/ARQDgdY6GOOO9pCihtL+1WppjZ/lg1QEwVTM9RLLBfX8/IKINyFrKZ7rfalCCqmK5ilGyaDPE+Y8uv1jKd42ql3UF784hac8nzabJJ108iJp7TVEa+0aPQBplYQ0cDbAj40KZOmG6wVwznJsnCYAME9MePT8aSl6rEsqqdKBAxohlxKT0KeMgrGWDf7tmPCdw1TKpoRl/gYN2guEjIKoN3rX manager@lab.pwned.com
