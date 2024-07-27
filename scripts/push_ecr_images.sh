echo $1
# cat $1/ecr-list.json
jq -c '.[]' $1/ecr-list.json | while read i; do
    ecrpath=`echo $i | jq '.path'| tr -d '"'`
    ecrtag=`echo $i | jq '.tag' | tr -d '"'`
    # echo $ecrtag $ecrpath
    cat $1/$ecrpath/test.txt
    echo ' '
done