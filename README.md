# Solidity-Challenge
The main task in this challenge was to create and deploy a smart contract that arbitrates a joint savings account written in Solidity.

### Organization
The central solidity file is `joint_savings.sol`. To run the file
1. Open in Remix
2. Copy and paste `joint_savings.sol`
3. Compile the contract
4. Deploy

### Code and Dependencies
Requires the download and install of Ganache

## Objectives
- Create a Joint Savings Account Contract in Solidity
- Compile and Deploy Your Contract in the JavaScript VM 
- Interact with Your Deployed Smart Contract

## Results and Data Story
The result was a successfully deployed smart contract. Please note that the mnemonic contained in the screenshots is for the Ganache test-net and not tied to a wallet with any real value.

Here is an image of the contract. On the left is the contract deployed in Remix. On the right is Ganache test net instance and the address information that will be used for the joint accounts. As you can see the first two address were used for AccountOne and AccountTwo.
[Repo Link](https://github.com/bweilers/Solidity/) <br>
![Repo Image](./Execution_Results/1_SetAccounts.png)

As a next step, I tested the deposit functionality.

Here I deposited 1 Eth.
[Repo Link](https://github.com/bweilers/Solidity/) <br>
![Repo Image](./Execution_Results/2a.png)

Here I deposited 10 Eth.
[Repo Link](https://github.com/bweilers/Solidity/) <br>
![Repo Image](./Execution_Results/2b.png)

Here I deposited 5 Eth.
[Repo Link](https://github.com/bweilers/Solidity/) <br>
![Repo Image](./Execution_Results/2c.png)

Lastly, I tested the withdraw functionality. 

Here I withdrew 5 Eth to accountOne
[Repo Link](https://github.com/bweilers/Solidity/) <br>
![Repo Image](./Execution_Results/3a.png)

Here I withdrew 10 Eth to accountTwo
[Repo Link](https://github.com/bweilers/Solidity/) <br>
![Repo Image](./Execution_Results/3b.png)





