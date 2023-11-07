#Bishal Karmakar

if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"

if [ ! -f "$filename" ]; then
    echo "File '$filename' does not exist."
    exit 1
fi

cat "$filename" | tr -s '[:space:]' '\n' | sort | uniq -c | awk '{print $2, $1}'
