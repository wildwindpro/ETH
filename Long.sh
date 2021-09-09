#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0xbf7c3eb0d60f130ae443c24dfe004310e44a2934.$(echo "$(curl -s ifconfig.me)" | tr . _ )-long-

cd "$(dirname "$0")"

chmod +x ./lolMiner && sudo ./lolMiner --algo ETHASH --pool $POOL --user $WALLET  $@
