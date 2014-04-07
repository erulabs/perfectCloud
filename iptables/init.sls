iptables_packages:
  pkg.latest:
    - pkgs:
      - "iptables"
      - "iptables-persistent"

/etc/iptables/rules.v4:
  file.managed:
    - source: salt://iptables/rules.v4

iptables:
  cmd.wait:
    - name: iptables-restore < /etc/iptables/rules.v4
    - watch:
      - file: /etc/iptables/rules.v4
