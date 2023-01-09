#!/bin/sh

if [ 'root' = $username ]
then
    remotepath='/root'
else
    remotepath="/home/$username"
fi

./communicater/scp_push.exp $host $username $passwd $(pwd)/tool/process_access $remotepath && ./communicater/process_access.exp $host $username $passwd $count process_access 
