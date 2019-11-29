const PrivateKeyProvider = require("truffle-hdwallet-provider");
const privateKey = "0x8f2a55949038a9610f50fb23b5883af3b4ecb3c3bb792cbcefbd1542c692be63";

module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*" 
    },
    quickstartWallet: {
      provider: () => new PrivateKeyProvider(privateKey, "http://localhost:32768/jsonrpc"),
      network_id: "*"
    },
  }
};