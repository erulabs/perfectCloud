postfix_packages:
  pkg.latest:
    - pkgs:
      - "postfix"

/etc/postfix:
  file.recurse:
    - source: salt://postfix/postfix
    - include_empty: True

postfix:
  service:
    - running
    - enable: True
    - watch:
      - file: /etc/postfix
