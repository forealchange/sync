#
#       Author   : Fore
#       Date     : 2012.10.25
#       Funciton : a script to run the same script in different hosts.
#
#


if [ $# -ne 2 ]; then
        echo "example:) ./copy2remoteHost remoteHosts workFolder"
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
        scp -r $ws $host:~/
        echo $host
        echo ""
done
