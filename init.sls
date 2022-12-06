# Update packages
apt-get update:
  cmd.run

# Install packages
ufw:
  pkg.installed

micro:
  pkg.installed

curl:
  pkg.installed

git:
  pkg.installed

nmap:
  pkg.installed

netcat:
  pkg.installed

mitmproxy:
  pkg.installed

apache2:
  pkg.installed

# Configure and enable firewall
ufw allow 22/tcp:
  cmd.run

ufw enable:
  cmd.run

export EDITOR=micro:
  cmd.run

/var/www/html/index.html:
  file.managed:
    - source: salt://starter-module/index.html