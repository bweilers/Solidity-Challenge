pragma solidity ^0.5.0;



contract JointSavings {
    address payable accountOne;
    address payable accountTwo;
    address public lastToWithdraw;
    uint public lastWithdrawAmount;
    uint public contractBalance;

    function withdraw (uint amount, address payable recipient) public {
        // verifies that the recipient is an authorized account owner
        require (recipient == accountOne || recipient == accountTwo, "You don't own this account!");
        // verifies that there are sufficient funds
        require (address(this).balance >= amount, "Insufficient funds!");
        // resets the lastToWithdraw if needed
        if (lastToWithdraw != recipient) {
            lastToWithdraw = recipient;
        }
        // executes the transfer
        recipient.transfer(amount);        
        // resets the lastWithdrawAmount variable
        lastWithdrawAmount = amount;
        // updates the contract balance variable
        contractBalance = address(this).balance;
    }

    function deposit () public payable{
        contractBalance = address(this).balance;
    }

    // Confirm, is this the only setter functionality we need?
    function setAccounts (address payable account1, address payable account2) public {
        accountOne = account1;
        accountTwo = account2;
    }

    // Office hours question, not sure if I need this getter function
    function getInfo() view public returns(address, uint, uint) {
    return (lastToWithdraw, lastWithdrawAmount, contractBalance);
    }

    function () external payable {
  }
}


// Address where the contract is deployed: 0x7338b01BCD6A3563B591F913fb84f8037b18D8A3