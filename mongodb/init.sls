mongodb_packages:
  pkg.latest:
    - pkgs:
      - "mongodb"

/etc/mongodb.conf:
  file.managed:
    - source: salt://mongodb/mongodb.conf

mongodb:
  service:
    - running
    - enable: True
    - watch:
      - file: /etc/mongodb.conf
