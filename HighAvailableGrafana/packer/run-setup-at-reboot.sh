#!/bin/bash
chmod +x /opt/grafana/setup.sh

cat > /etc/cron.d/first-boot <<EOF
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

@reboot root /bin/bash /opt/grafana/setup.sh > /var/log/yc-setup.log 2>&1

EOF

chmod +x /etc/cron.d/first-boot;
