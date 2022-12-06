apt-get update:
  cmd.run

ufw:
  pkg.installed

micro:
  pkg.installed

# Set editor to micro
/etc/profile.d/editor-config.sh:
  file.managed:
    - source: salt://starter-module/micro/editor-config.sh

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

openssh-server:
  pkg.installed

ssh:
  service.running

# Replace Apache default page
/var/www/html/index.html:
  file.managed:
    - source: salt://starter-module/apache2/index.html

# Configure and enable firewall
ufw allow 22/tcp:
  cmd.run

ufw enable:
  cmd.run