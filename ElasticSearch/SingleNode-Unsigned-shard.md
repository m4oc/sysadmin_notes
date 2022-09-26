Frist find the unsigned index

curl -XGET localhost:9200/_cat/shards?h=index,shard,prirep,state,unassigned.reason | grep UNASSIGNED

Set replicas to 0 for this index.

curl -XPUT "localhost:9200/INDEXNAME/_settings?pretty" -H 'Content-Type: application/json
' -d' { "number_of_replicas": 0 }'


Faster Use:

curl -XGET localhost:9200/_cat/shards?h=index,shard,prirep,state,unassigned.reason | grep UNASSIGNED | awk {'print $1'} | xargs -I % curl -XPUT "localhost:9200/%/_settings?pretty" -H 'Content
-Type: application/json' -d' { "number_of_replicas": 0 }'