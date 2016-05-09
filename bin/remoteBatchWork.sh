#
#       Author   : Fore
#       Date     : 2011.5.28
#       Funciton : a script to run the same script in different hosts.
#
#

if [ $# -ne 2 ]; then
        echo "example:) ./remoteBatchWorks.sh remoteHosts workScript.sh"
        exit 0
fi

fileName=$1

hosts=""

while read host
do
    hosts=$hosts" "$host
done < $fileName

for host in $hosts
do
        ws=$2
        wsName=`basename $ws`
        echo $host $wsName
        scp $ws $host:~/

        #ssh $host "cd ~/; sudo chmod +x ./$wsName; sudo ./$wsName"
        ssh -t $host "cd ~/; sudo chmod +x ./$wsName; sudo -E ./$wsName"
        echo $host
        echo ""
done
