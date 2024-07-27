echo $1
# cat $1/ecr-list.json
jq -c '.[]' $1/ecr-list.json | while read i; do
    jq '.path' $i
    echo $i
done