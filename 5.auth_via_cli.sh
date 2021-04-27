#!/bin/bash


if [ $# -ne 2 ]
	then
		echo 'Needs to supply argument'
		echo '  $1 = <role_id>'
		echo '  $2 = <secret_id>'
		exit 1
fi

set -x

vault write auth/approle/login role_id=${1} secret_id=${2}
