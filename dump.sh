# This file is part of elasticsearch dump.
#!/bin/sh

# URL where elasticsearch is running.
INPUT=http://localhost:9200

# destination where dump files will be generated
DEST=./

indices=$(curl -s -XGET $INPUT/_cat/indices?h=i)
for INDEX in $indices
do
  elasticdump --input=$INPUT/$INDEX --output=$DEST/$INDEX --type=data
done
