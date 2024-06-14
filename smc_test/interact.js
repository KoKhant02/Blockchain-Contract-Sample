const {Web3} = require('web3');
const web3 = new Web3('http://127.0.0.1:7545');
const account1 = '0x1d4585D620Facc921d62176238102fe6280e0D71'; 
const account2 = '0xE318c0f5dCF198A25143F82B0bc82626370C9F2d';
web3.eth.sendTransaction({
  from: account1,
  to: account2,
  value: web3.utils.toWei('1', 'ether')
}).then(receipt => {
  console.log('Transaction receipt:', receipt);
}).catch(error => {
  console.error('Error sending transaction:', error);
});
