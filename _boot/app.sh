cd /www/$(hostname)
git pull
npm install
i=0;
while true; do
	i=$[$i+1]
	i=$[$i+1]
	casperjs bot.js --iteration=$i
	sleep 60
done