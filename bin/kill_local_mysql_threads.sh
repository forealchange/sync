#! /bin/bash

set -x

mysql -e "show full processlist;" > ./tmp ; cat ./tmp | grep -E -i "(sleep)|(query)" | awk '{if($6 >= 240) print $1}' > ./pids

while read id;
do
    mysql -e "kill $id"
#    echo "kill $id"
done < ./pids
