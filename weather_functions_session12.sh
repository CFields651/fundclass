function average {
  echo average= $(echo "scale=1; $sum / $samples" | bc)
}

function round {
  printf "%.*f\n" 0 $1
}

function maxmin {

  max=$(round ${temp_array[$i]})
  min=$max
 
  for i in $(seq 1 $samples); do 
    if   [ $(round ${temp_array[$i]}) -gt $(round $max) ]; then max=${temp_array[$i]}
    elif [ $(round ${temp_array[$i]}) -lt $(round $min) ]; then min=${temp_array[$i]}
    fi
  done

  echo Max=$max
  echo Min=$min
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
maxmin
