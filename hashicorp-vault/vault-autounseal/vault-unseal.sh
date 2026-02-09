#!/bin/bash

export VAULT_ADDR="Your_Vault_Address"

# Wait until Vault API is reachable
until curl -s $VAULT_ADDR/v1/sys/health >/dev/null; do
  sleep 2
done

vault operator unseal UNSEAL_KEY_X
vault operator unseal UNSEAL_KEY_X
vault operator unseal UNSEAL_KEY_X
