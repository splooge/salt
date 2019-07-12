etc-vim-vimrc-local:
  file.managed:
    - name: /etc/vim/vimrc.local
    - contents:
      - set tabstop=4
      - set shiftwidth=4
      - set softtabstop=4
      - set expandtab
      - set background=dark
