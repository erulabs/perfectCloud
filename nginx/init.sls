nginx_packages:
  pkg.latest:
    - pkgs:
      - "nginx"

/etc/nginx:
  file.recurse:
    - source: salt://nginx/nginx
    - include_empty: True

nginx:
  service:
    - running
    - enable: True
    - watch:
      - file: /etc/nginx
