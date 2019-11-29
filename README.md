# Hyperledger Besu short tutorials

This repository provides a few simple know-how tutorials to get to know Hyperledger Besu project better. Hyperledger Besu is an open-source Ethereum client with enterprise-grade privacy and permissioning features.

The tutorials are separated into three folders:
* my-first-network: Featuring the network quickstart tutorial from Hyperledger Besu documentation, this tutorial shows how to package and run Hyperledger Besu nodes in docker containers, and how to package Grafana, Prometheus, Blockchain Explorer and GraphQL on top of your private network of Besu nodes. 
* my-private-network: Will help you set up a privacy-enabled Hyperledger Besu network with Orion as the private transaction manager. 
* my-permissioned-network: Will explain how to set up local and on-chain permissioning in a private Besu network. 

At the root of this project there is a POSTMAN collection for interaction with Hyperledger Besu JSON RPC REST API enabled on Besu nodes. Import it into POSTMAN and start sending requests. 

General requirements are: nodeJS, npm, truffle, yarn. You will need to add some more while going further in the tutorials. 

Every folder has a step-by-step instruction file (Steps.txt) for trying out some of BESU features. 

Finally, learn more about Hyperledger Besu from the official documentation: https://besu.hyperledger.org/en/stable/. 

