#!/bin/bash

if [ $# -ne 2 ]
	then
		echo 'Needs to supply argument'
		echo '  $1 = <role ID>'
		echo '  $2 = <secret ID>'
		exit 1
fi

set -x

PAYLOAD="{ \"role_id\"   : \"${1}\", \"secret_id\" : \"${2}\" }"

curl --request POST --data "${PAYLOAD}" http:/127.0.0.1:8200/v1/auth/approle/login
 
