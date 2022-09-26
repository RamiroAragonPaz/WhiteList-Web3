require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config({ path: ".env" });

const QUICKNODE_HTTP_URL = process.env.QUICKNODE_HTTP_URL;
const PRIVATE_KEY = process.env.PRIVATE_KEY;

module.exports = {
  solidity: "0.8.9",
  networks: {
    goerli: {
      url: "https://quiet-responsive-replica.ethereum-goerli.discover.quiknode.pro/000c7523a49d64d96e90501da216604f8bb0dfd1/",
      accounts: ["cc33263d210342e205aa31b69676d41c069c3b2374c9a2073e9a7c79da5f2081"],
    },
  },
};