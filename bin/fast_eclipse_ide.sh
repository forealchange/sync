#! /bin/bash 


echo "
#! /bin/bash
cd /home/fore/downloads/eclipse
nohup ./eclipse &
" > /usr/local/bin/foreide

chmod +x /usr/local/bin/foreide
