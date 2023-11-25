#!/bin/bash
echo "[i] We will now uninstall Mvhd-Tornado..."
echo "[i] This will delete all backups."
sudo rm -i /usr/bin/rst
sudo rm -rf -i /usr/share/Mvhd-Tornado

echo "[i] Mvhd-Tornado sucessfully uninstalled."
exit 0
