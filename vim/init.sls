vim_packages:
  pkg.latest:
    - pkgs:
      - "app-editors/vim"

/root/.vim:
  file.recurse:
    - source: salt://vim/.vim
    - include_empty: True

/root/.vimrc:
  file.managed:
    - source: salt://vim/.vimrc
