ACCOUNT="0x0000000000000000000000000000000000008888"
NODE="0x0000000000000000000000000000000000009999"

besu --data-path=data --genesis-file=../cliqueGenesis.json --permissions-nodes-config-file-enabled --permissions-accounts-config-file-enabled --rpc-http-enabled --rpc-http-api=ADMIN,ETH,NET,PERM,CLIQUE --host-whitelist="*" --rpc-http-cors-origins="*" --permissions-accounts-contract-enabled --permissions-accounts-contract-address=$ACCOUNT --permissions-nodes-contract-enabled --permissions-nodes-contract-address=$NODE
