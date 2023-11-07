#Bishal Karmakar

function print_fibonacci(){
max=$1
a=0
b=1
echo "The Fibonacci sequence upto $max is : "
while [ $a -le $max ]
do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
done
}

read -p "Enter the maximum number for the Fibonacci sequence: " max_number
print_fibonacci $max_number
