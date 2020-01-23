sudo apt-get install ntp
sudo /etc/init.d/ntp start || sudo /etc/init.d/ntpd start
sudo cd /.
cd root

echo "do you need to update just the time|date or both??"
echo "Entre the choice[t|d|b]??"
read -p prompt choice
case $choice in
  t)
    echo "enter time in format HH:MM:SSAM/PM..."
    read -p prompt time
    date +%T%p -s $time
  d)
    echo "enter date in format "yyyymmdd..."
    read -p prompt _date
    date +%y%m%d -s "$_date"
  b)
    echo "enter in format DD MON YYYY HH:MM:SS...(month in words, ex:jan)"
    read -p prompt string
    date --set="$string"
esac
echo "the date is.......///"
date
