#!/bin/sh

PRINTER_IP="$(ip addr show dev wlan0 | grep -o 'inet.*/' | grep -Eo '[0-9.]+')"

# Creality K1 hack
# Thanks to:
# * K3D:        https://www.youtube.com/watch?v=D8qqrK7eC1E (RUS)
#   For the initial hack
# * 3DPrintSOS: https://www.youtube.com/watch?v=sZJjOkQJVSQ (ENG)
#   For making the initial english translation
# * aim6mac:    https://www.youtube.com/watch?v=nbbp7NvvzTM (ENG)
#   For their guide on downgrading the printer
#
# Stock K1 root password: 0755cxsw$888
# ssh onto the machine, run `wget https://github.com/husjon/creality-k1/raw/main/enable_fluidd.sh -O - | sh`

echo "[!] Copy Moonraker config to printer config folder"
cp /usr/share/moonraker/moonraker.conf /usr/data/printer_data/config/

echo "[!] Update nginx service to allow to start"
sed -i 's|#\t|\t|g' /etc/init.d/S50nginx

echo "[!] Update moonraker service file to allow it to start"
sed -i 's|#        start|         start|g' /etc/init.d/S56moonraker_service

echo "[!] Rebooting printer..."
echo
echo "[!] Web interface will be available on http://${PRINTER_IP}:4408 within a minute."
echo "    When the fluidd interface is available you might need to click the FIRMWARE RESTART button, alternatively restart the machine physically."

reboot
