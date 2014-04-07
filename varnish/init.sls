varnish_packages:
  pkg.latest:
    - pkgs:
      - "varnish"

/etc/varnish/default.vcl:
  file.managed:
    - source: salt://varnish/default.vcl

/etc/default/varnish:
  file.managed:
    - source: salt://varnish/varnish

varnish:
  service:
    - running
    - enable: True
    - watch:
      - pkg: varnish_packages
      - file: /etc/varnish/default.vcl
      - file: /etc/default/varnish
