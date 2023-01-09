#!/bin/sh

if [ 'root' = $username ]
then
    remotepath='/root'
else
    remotepath="/home/$username"
fi

./communicater/scp_push.exp $host $username $passwd $(pwd)/tool/process_permission_change $remotepath && ./communicater/process_permission_change.exp $host $username $passwd $count 'process_permission_change'
