vim_packages:
  pkg.latest:
    - pkgs:
      - "vim"

/root/.vim:
  file.recurse:
    - source: salt://vim/.vim
    - include_empty: True

/root/.vimrc:
  file.managed:
    - source: salt://vim/.vimrc

https://github.com/saltstack/salt-vim:
  git.latest:
    - rev: master
    - target: /root/.vim/bundle/salt-vim

https://github.com/tpope/vim-sensible:
  git.latest:
    - rev: master
    - target: /root/.vim/bundle/vim-sensible

https://github.com/bling/vim-airline:
  git.latest:
    - rev: master
    - target: /root/.vim/bundle/vim-airline

https://github.com/pangloss/vim-javascript:
  git.latest:
    - rev: master
    - target: /root/.vim/bundle/vim-javascript

https://github.com/kchmck/vim-coffee-script:
  git.latest:
    - rev: master
    - target: /root/.vim/bundle/vim-coffee-script
