mysql_packages:
  pkg.latest:
    - pkgs:
      - "mysql-server"

/etc/mysql:
  file.recurse:
    - source: salt://mysql/mysql
    - include_empty: True

mysql:
  service:
    - running
    - enable: True
    - watch:
      - file: /etc/mysql
