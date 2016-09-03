read temp humidity <<< $(curl -s "http://api.openweathermap.org/data/2.5/weather?q=Minneapolis,us&units=imperial&APPID=33e4df7926fd328cc6412dbade563c8d" | jq '.main.humidity,.main.temp')
