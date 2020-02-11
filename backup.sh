#!/bin/bash

rsync -avz -e "ssh " /root/all_date deepak@server1.com:/backup/

echo "backup for $(date) " | mail -s "backup complete" deepak@localhost
