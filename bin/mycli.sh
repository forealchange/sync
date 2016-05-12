#! /bin/bash 


echo "
#! /bin/bash

mysql -uroot -p123456

" > /usr/local/bin/mycli

chmod +x /usr/local/bin/mycli
