read -p "Capture the bilibili token by some util like fiddler and paste it here: " token
curl -s https://raw.githubusercontent.com/ch3rub1m/bilibili_manga_daily_bonus/master/main.sh > ~/.bilibili-manga
mycron=/tmp/$(basename $0).$$.$RANDOM
crontab -l > $mycron
echo "00 * * * * BILIBILI_TOKEN=$token bash ~/.bilibili-manga" >> $mycron
crontab $mycron
rm $mycron
