#!/bin/bash

vault policy write apikey_producer producer.hcl
vault policy write apikey_consumer consumer.hcl

vault write auth/approle/role/producer token_policies=apikey_producer secret_id_ttl=10m secret_id_num_uses=10
vault write auth/approle/role/consumer token_policies=apikey_consumer secret_id_ttl=10m secret_id_num_uses=3
