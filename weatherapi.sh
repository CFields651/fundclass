read weatherapi_key <<< $(cat weatherapi_key)
curl -s "http://api.openweathermap.org/data/2.5/weather?q=Minneapolis,us&units=imperial&APPID=$weatherapi_key" 

#read date temp humidity <<< $(cat weather.json  | jq '.dt,.main.temp,.main.humidity')
#echo $date
#read datetime <<<$(date -d @$date +'%m/%d/%Y %H:%M:%S')
#echo $datetime
