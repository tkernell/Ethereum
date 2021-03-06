pragma solidity ^0.4.18;


contract Owned {
    address public owner = msg.sender;

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }
    
    function kill() public onlyOwner {
        selfdestruct(owner);
    }
    
}
