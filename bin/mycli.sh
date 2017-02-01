#! /bin/bash 


echo "
#! /bin/bash

mysql -uroot -p123456 -D QTrade

" > /usr/local/bin/mycli

chmod +x /usr/local/bin/mycli
