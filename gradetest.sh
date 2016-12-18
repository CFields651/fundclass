echo possible points
path=$1
sum=0;for pts in $(grep ' pts' $path/test.sh | awk '{ print $1 }' | awk -F'/' '{ print $2 }'); do sum=$(( $sum + $pts)); done;echo $sum
echo scored points
sum=0;for pts in $(grep ' pts' $path/test.sh|  awk -F'/' '{ print $1 }' | awk -F'#' '{ print $2}'); do sum=$(( $sum + $pts)); done;echo $sum

