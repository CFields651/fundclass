function average {
  echo average= $(echo "scale=1; $sum / $samples" | bc)
}

#populate temp_array with temperature
declare -a temp_array
for temp in $(cat ~/tmp/weather_data.csv | awk -F',' '{ print $2 }'); do 
  temp_array=("${temp_array[@]}" $temp)
done
 
samples=$((${#temp_array[@]}-1))

#sum all the values in temp_array
sum=0
for temp in $(seq 0 $samples); do 
  sum=$(echo "$sum + ${temp_array[$temp]}"|bc)
done

echo "sum=     $sum"
echo "samples= $samples"
average
