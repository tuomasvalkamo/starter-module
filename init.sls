# Configure and enable firewall
ufw:
  pkg.installed

# Allow 22/tcp and 80/tcp
/etc/ufw/user.rules:
  file.managed:
    - source: salt://starter-module/ufw/user.rules

/etc/ufw/user6.rules:
  file.managed:
    - source: salt://starter-module/ufw/user6.rules

ufw enable:
  cmd.run

# Set editor to micro
micro:
  pkg.installed

/etc/profile.d/editor-config.sh:
  file.managed:
    - source: salt://starter-module/micro/editor-config.sh

# Install packages
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

openssh-server:
  pkg.installed

ssh:
  service.running

apache2:
  pkg.installed

# Replace Apache default page
/var/www/html/index.html:
  file.managed:
    - source: salt://starter-module/apache2/index.html