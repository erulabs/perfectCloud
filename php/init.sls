php_repo:
  pkgrepo.managed:
    - ppa: ondrej/php5
    - require_in:
      pkg: php_packages

php_packages:
  pkg.latest:
    - pkgs:
      - "php5-common"
      - "php5-cli"
      - "php5-fpm"
