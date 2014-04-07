apache2_repo:
  pkgrepo.managed:
    - ppa: ondrej/apache2
    - require_in:
      pkg: apache2_packages

apache2_packages:
  pkg.latest:
    - pkgs:
      - "apache2-mpm-event"

/etc/apache2:
  file.recurse:
    - source: salt://apache2/apache2
    - include_empty: True

apache2:
  service:
    - running
    - enable: True
    - watch:
      - pkg: apache2_packages
      - file: /etc/apache2
