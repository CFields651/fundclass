echo 'for i in {1..3}; do echo $i; done'
read -p "What do you think will happen?  Press Enter to Continue" 
for i in {1..3}; do echo $i; done
echo " "
echo 'for name in Larry Curly Moe; do echo $name; done'
read -p "What do you think will happen?  Press Enter to Continue" 
for name in Larry Curly Moe; do echo $name; done
echo " "
echo 'names=(Larry Currly Moe)'
names=(Larry Currly Moe)
echo 'echo ${names[@]}'
read -p "What do you think will happen?  Press Enter to Continue" 
echo ${names[@]}
echo 'echo ${names[0]}'
read -p "What do you think will happen?  Press Enter to Continue" 
echo ${names[0]}
echo 'echo ${names[1]}'
read -p "What do you think will happen?  Press Enter to Continue" 
echo ${names[1]}
echo 'echo ${names[2]}'
read -p "What do you think will happen?  Press Enter to Continue" 
echo ${names[2]}
echo " "
echo "names=(\"\${names[@]}\" \"Mr. Fields\")"
echo 'echo ${names[@]}'
read -p "What do you think will happen?  Press Enter to Continue" 
names=("${names[@]}" "Mr. Fields")
echo ${names[@]}
echo " "
echo 'declare -a temp_array'
declare -a temp_array
echo "for temp in \$(cat ~/tmp/weather_data.csv | awk -F',' '{ print \$2 }'); do temp_array=(\"\${temp_array[@]}\" \$temp); done"
for temp in $(cat ~/tmp/weather_data.csv | awk -F',' '{ print $2 }'); do export temp_array=("${temp_array[@]}" $temp); done
echo " "
echo 'echo ${temp_array[*]}'
read -p "What do you think will happen?  Press Enter to Continue" 
echo ${temp_array[*]}
echo " "
echo "How do you understand that last command?"
echo "cat ~/tmp/weather_data.csv"
read -p "What do you think will happen?  Press Enter to Continue" 
cat ~/tmp/weather_data.csv | head -5
echo "cat ~/tmp/weather_data.csv | awk -F',' '{ print \$2 }'"
read -p "What do you think will happen?  Press Enter to Continue" 
cat ~/tmp/weather_data.csv | awk -F',' '{ print $2 }' | head -5
echo "for temp in \$(cat ~/tmp/weather_data.csv | awk -F',' '{ print \$2 }'); do echo \"The temperature was \$temp\"; done"
read -p "What do you think will happen?  Press Enter to Continue" 
for temp in $(cat ~/tmp/weather_data.csv | awk -F',' '{ print $2 }'); do echo "The temperature was $temp"; done | head -5
echo " "
echo "Is this more understandable now?"
echo "for temp in \$(cat ~/tmp/weather_data.csv | awk -F',' '{ print \$2 }'); do temp_array=(\"\${temp_array[@]}\" \$temp); done"
echo ' ' 
echo "Switching gears..."
echo "echo \${#temp_array[@]}"
echo "This is the number of elements or 'lines' in the array"
echo ${#temp_array[@]}
echo " "
echo "seq 0 ${#temp_array[@]}"
read -p "What do you think will happen?  Press Enter to Continue" 
seq 1 ${#temp_array[@]}
echo ' '
echo "for i in \$(seq 1 \${#temp_array[@]}); do echo \${temp_array[\$i]}; done"
read -p "What do you think will happen?  Press Enter to Continue" 
for i in $(seq 1 ${#temp_array[@]}); do echo ${temp_array[$i]}; done
