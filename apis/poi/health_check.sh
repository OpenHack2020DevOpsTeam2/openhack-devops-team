#!/bin/bash

declare url="https://openhackdz41qgg3poi.azurewebsites.net/api/healthcheck/poi"
declare result=$(curl -i $url 2>/dev/null | grep HTTP/2)
declare status
if [[ -z $result ]];
    then status="N/A"
    else status=${result:7:3}
fi
echo $status
if [$status="200"];
   then exit 0
fi
exit 1
