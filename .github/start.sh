#!/bin/bash

set -e

echo "======================================"
echo " Ubuntu XFCE + xRDP"
echo "======================================"

mkdir -p /run/dbus /run/xrdp

dbus-daemon --system --fork || true

cat > /etc/xrdp/startwm.sh <<'EOF'
#!/bin/sh

unset DBUS_SESSION_BUS_ADDRESS
unset XDG_RUNTIME_DIR

exec startxfce4
EOF

chmod +x /etc/xrdp/startwm.sh

service xrdp start

echo "======================================"
echo "xRDP started"
echo "Username: root"
echo "Password: root"
echo "Internal RDP port: 3389"
echo "======================================"

while true
do
    sleep 3600
done
