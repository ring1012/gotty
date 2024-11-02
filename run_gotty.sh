#!/bin/bash
apt update
apt install curl wget -y
curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb && 

 dpkg -i cloudflared.deb && 

 cloudflared service install eyJhIjoiMTFiMmE0ZTU4NDhlYmI0ZjQ0NWI2NWI1YTljZDhiMTciLCJ0IjoiOTY1MjBjODQtOTI0Mi00ODMyLThmYzctZDE4OWJhNGUzY2M1IiwicyI6Ik1XRXhaVFptWm1JdFpHTXpNaTAwT1RWaUxXRTJObUV0TVRjeVpEaGpNbUkwWTJNeSJ9
 nohup /usr/local/bin/v2ray run --config /root/data/v2ray/soc.json > /dev/null 2>&1 
/usr/local/bin/gotty --permit-write --reconnect /bin/bash
