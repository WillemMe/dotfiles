#!/bin/bash
#

# Name of the WiFi network to check
wifi_name="Loading..."

# Command to check the current WiFi network
current_wifi=$(nmcli -t -f NAME,TYPE connection show --active | grep "802-11-wireless" | cut -d: -f1)

if [ "$current_wifi" == "$wifi_name" ]; then
  sudo mount -t cifs //vault/Photos /home/willem/Vault/Photos -o _netdev,nofail,x-systemd.mount-timeout=5,credentials=/etc/samba/credentials/willem,workgroup=workgroup,uid=willem,gid=users

  sudo mount -t cifs //vault/Backup /home/willem/Vault/Backup -o _netdev,nofail,x-systemd.mount-timeout=5,credentials=/etc/samba/credentials/willem,workgroup=workgroup,uid=willem,gid=users

  sudo mount -t cifs //vault/Documents /home/willem/Vault/Documents -o _netdev,nofail,x-systemd.mount-timeout=5,credentials=/etc/samba/credentials/willem,workgroup=workgroup,uid=willem,gid=users
fi
