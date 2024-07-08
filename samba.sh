#!/bin/sh
cat <<EOT > /etc/samba/smb.conf
[global]
   workgroup = WORKGROUP
   security = user
   map to guest = Bad User

[share]
   path = /srv/samba/share
   browsable = yes
   writable = yes
   guest ok = no
   read only = no
   create mask = 0644
   directory mask = 0755
EOT

(echo "$SAMBA_PASS"; echo "$SAMBA_PASS") | smbpasswd -s -a sambauser
chown -R sambauser:sambauser /srv/samba/share
chmod -R 770 /srv/samba/share
smbd -D
nmbd -D
tail -f /dev/null
