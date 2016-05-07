#! /bin/bash 


echo "#! /bin/bash

cd /home/fore/quan-trade
source ./bin/activate
nohup  ipython qtconsole  &
" > /usr/local/bin/foreipyc

chmod +x /usr/local/bin/foreipyc
