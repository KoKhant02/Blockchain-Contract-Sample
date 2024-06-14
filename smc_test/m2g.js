const {Web3} = require('web3');
const web3 = new Web3('http://127.0.0.1:7545');

const BC = '0x79d71164dD636F2877b4A24e19755390bB26ab73';
const BCprivateKey = '56ca7feb62e5e1500abaedef37f4f213ca9b7b5cddbeb1979d4d6a57bdd2ef4f';

const recipient = '0xE318c0f5dCF198A25143F82B0bc82626370C9F2d';
const sendTransaction = async () => {
  const tx = {
    from: BC,
    to: recipient,
    value: web3.utils.toWei('1', 'ether'),
    gas: 21000,
    gasPrice: web3.utils.toWei('10', 'gwei')
  };
  try {
    // Await the result of signing the transaction
    const signedTx = await web3.eth.accounts.signTransaction(tx, BCprivateKey);
    // Await the result of sending the signed transaction
    const receipt = await web3.eth.sendSignedTransaction(signedTx.rawTransaction);

    console.log('Transaction receipt:', receipt);
  } catch (error) {
    console.error('Error sending transaction:', error);
  }
};
sendTransaction();
