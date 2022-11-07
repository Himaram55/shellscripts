#!/bin/bash
#script to copy local messages file to remote server(hostname is sarath).
#using scp to copy the file to remote server. SSH keys are already exchaged for root
scp /var/log/messages sarath:/logs/messages_$(hostname)_$(date '+%d%m%y%H%M%S') >>/var/log/msglogs 2>&1
#End of the script

