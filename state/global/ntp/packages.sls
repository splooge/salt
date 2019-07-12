ntp-packages:
  pkg.installed:
    - pkgs:
      - ntp
      - ntpdate

ntp-running:
  service.running:
    - name: ntp
    - enable: True
