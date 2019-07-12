grub-no-biosdevicenames:
  file.line:
    - name: /etc/default/grub
    - mode: replace
    - match: "GRUB_CMDLINE_LINUX="
    - content: "GRUB_CMDLINE_LINUX=\"net.ifnames=0 biosdevname=0\""
    - after: "GRUB_CMDLINE_LINUX_DEFAULT"
