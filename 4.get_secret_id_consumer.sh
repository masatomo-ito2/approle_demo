#!/bin/bash
#vault write -f -wrap-ttl=30m auth/approle/role/consumer/secret-id
vault write -f auth/approle/role/consumer/secret-id
