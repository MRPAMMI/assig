Splitter Contract: This contract allows users to split ether equally between two other users. The split() function takes two address parameters for the two users to split the ether between. Users can call this function with a value of ether to split, and the contract will check that the value is even. If it is, the value is split in half and sent to each of the two users. Note that this contract assumes that the users it is interacting with are trustworthy and have valid addresses. In a real-world scenario, additional checks and security measures would need to be implemented to ensure the safety and validity of the transactions

pragma solidity ^0.8.0;

contract EtherSplitter {
    function split(address payable user1, address payable user2) external payable {
        require(msg.value % 2 == 0 && msg.value != 0, "Value must be even and non-zero");
        uint splitValue = msg.value / 2;
        user1.transfer(splitValue);
        user2.transfer(splitValue);
    }
}
