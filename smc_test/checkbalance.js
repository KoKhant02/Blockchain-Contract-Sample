const {Web3} = require('web3');
const web3 = new Web3('http://127.0.0.1:8545'); 

const account = '0xd20EfBBd025EC9eA2C4EE0323d52A2ED9DcDb78E'; 

web3.eth.getBalance(account)
  .then(balance => {
    console.log(`Balance of current account: ${web3.utils.fromWei(balance, 'ether')} ETH`);
  })
  .catch(error => {
    console.error('Error fetching balance:', error);
  });
