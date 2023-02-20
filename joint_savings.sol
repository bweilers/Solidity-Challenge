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
        // executes the transef
        recipient.transfer(amount);        
        // resets the lastWithdrawAmount variable
        lastWithdrawAmount = amount;
        // updates the contract balance variable
        contractBalance = address(this).balance;
    }

    function deposit () public payable{
        contractBalance = address(this).balance;
    }

    function setAccounts (address payable account1, address payable account2) public {
        accountOne = account1;
        accountTwo = account2;
    }

    function () external payable {
  }
}