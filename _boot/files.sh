iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 4080
cd /www/$(hostname)
# rm -rf public/console/logs
echo starting http-server
http-server public -p 4080 -s -c 30 #-d false