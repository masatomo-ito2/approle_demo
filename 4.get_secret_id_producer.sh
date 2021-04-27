#!/bin/bash
#vault write -f -wrap-ttl=30m auth/approle/role/producer/secret-id
vault write -f auth/approle/role/producer/secret-id
