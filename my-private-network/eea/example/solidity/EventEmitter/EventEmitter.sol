pragma solidity >=0.4.0 <0.6.0;

// compile with:
// solc EventEmitter.sol --bin --abi --optimize --overwrite -o .
// then create web3j wrappers with:
// web3j solidity generate -b ./generated/EventEmitter.bin -a ./generated/EventEmitter.abi -o ../../../../../ -p tech.pegasys.pantheon.tests.web3j.generated
contract EventEmitter {
    address owner;
    event stored(address _to, uint _amount);
    address _sender;
    uint _value;

    constructor() public {
        owner = msg.sender;
    }

    function store(uint _amount) public {
        emit stored(msg.sender, _amount);
        _value = _amount;
        _sender = msg.sender;
    }

    function value()  view public  returns (uint) {
        return _value;
    }

    function sender() view public returns (address) {
        return _sender;
    }
}