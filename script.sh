#!/bin/bash
BASE_URL="https://nxt-logs.sprintnxt.in/livelogs/payments.sprintnxt.in"
TODAY=$(date +%F)
DIR="$BASE_URL/$TODAY/payout-decrypted-data"

for i in {10..1}; do
  URL="$DIR/log_${i}.txt"
  if curl --output /dev/null --silent --head --fail "$URL"; then
    echo "$URL"
    break
  fi
done


/logs #main log dir
 /2025-10-01 # inside main log dir folder are created date wise
 /2025-10-02
   /sprintopn # after selecting date wise folder inside that there are services folder
    /irctc 
    /aeps 
    /dmt 
    /recharege
    /billpay
        logs.log
   /sprintverify
      /pennydrop  # inside service folder there are multiple apis folder 
      /pennyless
      /iplookupapi
      /panverify
      /adharverify 
         logs.log # inside api folder there are log files  