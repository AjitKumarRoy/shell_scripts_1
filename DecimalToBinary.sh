#Bishal Karmakar

echo -n "Enter any decimal no: "
read decimal
binary=""
while [ $decimal -gt 0 ];
do
remainder=$((decimal % 2))
binary="$remainder$binary"
decimal=$((decimal / 2))
done
echo "Equivalent Binary no: $binary"
