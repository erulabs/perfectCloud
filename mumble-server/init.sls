mumble_packages:
  pkg.latest:
    - pkgs:
      - "mumble-server"

/etc/mumble-server.ini:
  file.managed:
    - source: salt://mumble-server/mumble-server.ini

mumble-server:
  service:
    - running
    - enable: True
    - watch:
      - file: /etc/mumble-server.ini
