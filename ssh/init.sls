openssh_packages:
  pkg.latest:
    - pkgs:
      - "ssh"

/etc/ssh/sshd_config:
  file:
    - managed
    - source: salt://ssh/sshd_config
    - mode: 600
    - user: "root"
    - group: "root"
    - require:
      - pkg: openssh_packages
