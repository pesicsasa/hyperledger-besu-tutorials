cd Node-2
BOOTNODE="enode://cbbe52edf28b094cc6d183ff19cd43ad0e77364b0f9695f64f0c52c9c5a5c7b642f75727ba481e6ad4b4546fa0cc7133f68a8cfc0a85dda67e908503870f5670@127.0.0.1:30303"
besu --data-path=data --genesis-file=../genesis.json --rpc-http-enabled --rpc-http-api=ETH,NET,IBFT,EEA,PRIV --host-whitelist="*" --rpc-http-cors-origins="all" --privacy-enabled --privacy-url=http://127.0.0.1:8889 --privacy-public-key-file=Orion/nodeKey.pub --min-gas-price=0  --bootnodes= $BOOTNODE --p2p-port=30304 --rpc-http-port=8546
