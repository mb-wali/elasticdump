# This file is part of elasticsearch restore.
#!/bin/sh

# URL where elasticsearch is running.
OUTPUT=http://localhost:9200

# destination where dump files are located
DUMPS=./dumps

for FILENAME in "$DUMPS"/*
do
    echo "$FILENAME"
    elasticdump --input=$FILENAME --output=$OUTPUT/$FILE --type=data
done
