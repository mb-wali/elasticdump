
# Install
Make sure you have `npm` installed.

```bash
npm install elasticdump -g
```

## Dump all
To dump all indices run the follwing commands

```
chmod +x ./dump.sh
./dump.sh
```

**INPUT** - URL where elasticsearch is running. e.g. `http://localhost:9200`

**DEST** - Destination where dump files will be stored. e.g. `./backup`


## Restore all
To restore all dumped indices run the following commands
```
chmod +x ./restore.sh
./restore.sh
```
**OUTPUT** - URL where elasticsearch is running. e.g. `http://localhost:9200`

**DUMPS** - Destination where all the dump files are located. e.g. `./backup`


### Elasticsearch queries

To see all indices with all headers

```curl
curl -X GET "localhost:9200/_cat/indices?v" -H "Content-Type: application/json" -d '
{   "query": {
        "match_all": {}
    }
}'
```

To see all indices with only header of index
```curl
curl -X GET "localhost:9200/_cat/indices?h=i" -H "Content-Type: application/json" -d '
{   "query": {
        "match_all": {}
    }
}'
```
