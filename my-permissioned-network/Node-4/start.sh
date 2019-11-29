#!/bin/bash    
ENODE1=enode://dd861916566efd532339df26340c53cfc2b0f716caab134af46c85b8758efe160ae0b3a5012a34b88d311cc7baa7ccdb3b113cbcd990eddddef54e5beb8a5006@127.0.0.1:30303
besu --data-path=data --bootnodes=$ENODE1 --genesis-file=../cliqueGenesis.json --rpc-http-enabled --rpc-http-api=ADMIN,ETH,NET,PERM,CLIQUE --host-whitelist="*" --rpc-http-cors-origins="*" --p2p-port=30306 --rpc-http-port=8548    
