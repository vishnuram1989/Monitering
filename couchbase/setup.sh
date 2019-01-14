#!/bin/bash
set -m 

/entrypoint.sh couchbase-server &

sleep 60


echo "Creating couchbase cluster..."

/opt/couchbase/bin/couchbase-cli cluster-init -c couchbase1:8091 --cluster-username Administrator --cluster-password password --services data,index,query,eventing,fts --cluster-ramsize 1600 --cluster-index-ramsize 512 --cluster-eventing-ramsize 256 --cluster-fts-ramsize 256 --index-storage-setting default

echo "Creating data bucket..."

/opt/couchbase/bin/couchbase-cli bucket-create -c couchbase1:8091 -u Administrator -p password --bucket=data --bucket-type=couchbase --bucket-ramsize=500 --bucket-replica=1 --wait

echo "Creating schema bucket..."

/opt/couchbase/bin/couchbase-cli bucket-create -c couchbase1:8091 -u Administrator -p password --bucket=schema --bucket-type=couchbase --bucket-ramsize=100 --bucket-replica=1 --wait

/opt/couchbase/bin/couchbase-cli server-list -c couchbase1:8091 --username Administrator --password password

/opt/couchbase/bin/couchbase-cli bucket-list -c couchbase1:8091 --username Administrator --password password


