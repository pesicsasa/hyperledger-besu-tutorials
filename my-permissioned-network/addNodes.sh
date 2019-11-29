#!/bin/bash    

ENODE1=enode://dd861916566efd532339df26340c53cfc2b0f716caab134af46c85b8758efe160ae0b3a5012a34b88d311cc7baa7ccdb3b113cbcd990eddddef54e5beb8a5006@127.0.0.1:30303
ENODE2=enode://41ebf666762569d099df40d77af8c42f539e37093185fae07e8058e7acf7e1a20350ce65bfc08207992d6e7709a85a9952a6291cea25e269ebd40c33d26183ef@127.0.0.1:30304
ENODE3=enode://ddbe28698559bf302e0872b52cf23699f87840bb12218f9134130da898dc5d10efb225ab5e6e3bc0dbdb6d16d51332f66c75a0ffdff27521c86b873d36142b48@127.0.0.1:30305

curl -X POST --data '{"jsonrpc":"2.0","method":"perm_addNodesToWhitelist","params":[["'"$ENODE1"'","'"$ENODE2"'","'"$ENODE3"'"]], "id":1}' http://127.0.0.1:8545
curl -X POST --data '{"jsonrpc":"2.0","method":"perm_addNodesToWhitelist","params":[["'"$ENODE1"'","'"$ENODE2"'","'"$ENODE3"'"]], "id":1}' http://127.0.0.1:8546
curl -X POST --data '{"jsonrpc":"2.0","method":"perm_addNodesToWhitelist","params":[["'"$ENODE1"'","'"$ENODE2"'","'"$ENODE3"'"]], "id":1}' http://127.0.0.1:8547

curl -X POST --data '{"jsonrpc":"2.0","method":"admin_addPeer","params":["'"$ENODE1"'"],"id":1}' http://127.0.0.1:8546
curl -X POST --data '{"jsonrpc":"2.0","method":"admin_addPeer","params":["'"$ENODE1"'"],"id":1}' http://127.0.0.1:8547
curl -X POST --data '{"jsonrpc":"2.0","method":"admin_addPeer","params":["'"$ENODE2"'"],"id":1}' http://127.0.0.1:8547





