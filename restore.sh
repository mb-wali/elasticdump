# This file is part of elasticsearch restore.
#!/bin/sh

# We would run rstore commands for each index manullay until the script is ready.

# communities-communities-v1.0.0
elasticdump \
    --input=./dumps/communities-communities-v1.0.0-1623051756.json \
    --output=http://localhost:9200/communities-communities-v1.0.0-1623051756 \
    --type=mapping

# rdmrecords-drafts-draft-v2.0.0
elasticdump \
    --input=./dumps/rdmrecords-drafts-draft-v2.0.0-1623051756.json \
    --output=http://localhost:9200/rdmrecords-drafts-draft-v2.0.0-1623051756 \
    --type=mapping

# rdmrecords-drafts-draft-v3.0.0
elasticdump \
    --input=./dumps/rdmrecords-drafts-draft-v3.0.0-1623051756.json \
    --output=http://localhost:9200/rdmrecords-drafts-draft-v3.0.0-1623051756 \
    --type=mapping

# rdmrecords-records-record-v2.0.0
elasticdump \
    --input=./dumps/rdmrecords-records-record-v2.0.0-1623051756.json \
    --output=http://localhost:9200/rdmrecords-records-record-v2.0.0-1623051756 \
    --type=mapping

# rdmrecords-records-record-v3.0.0
elasticdump \
    --input=./dumps/rdmrecords-records-record-v3.0.0-1623051756.json \
    --output=http://localhost:9200/rdmrecords-records-record-v3.0.0-1623051756 \
    --type=mapping

# ./dumps/subjects-subject-v1.0.0
elasticdump \
    --input=./dumps/subjects-subject-v1.0.0-1623051756.json \
    --output=http://localhost:9200/subjects-subject-v1.0.0-1623051756 \
    --type=mapping

# ./dumps/vocabularies-vocabulary-v1.0.0
elasticdump \
    --input=./dumps/vocabularies-vocabulary-v1.0.0-1623051756.json \
    --output=http://localhost:9200/vocabularies-vocabulary-v1.0.0-1623051756 \
    --type=mapping
