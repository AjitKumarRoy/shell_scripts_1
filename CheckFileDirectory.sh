#Bishal Karmakar

if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_or_directory>"
    exit 1
fi

path="$1"

if [ -e "$path" ]; then
    echo "Path $path exists."

    if [ -d "$path" ]; then
        echo "$path is a directory."
    fi

    if [ -f "$path" ]; then
        echo "$path is a regular file."
    fi

    if [ -r "$path" ]; then
        echo "You have read permissions for $path."
    else
        echo "You do not have read permissions for $path."
    fi

    if [ -w "$path" ]; then
        echo "You have write permissions for $path."
    else
        echo "You do not have write permissions for $path."
    fi

    if [ -x "$path" ]; then
        echo "You have execute permissions for $path."
    else
        echo "You do not have execute permissions for $path."
    fi
else
    echo "Path $path does not exist."
fi
