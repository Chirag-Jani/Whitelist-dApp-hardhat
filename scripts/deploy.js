const { ethers } = require("hardhat");

async function main() {
  const whitelistContract = await ethers.getContractFactory("Whitelist");

  // here we passed 10 as the maximum number of users who can be whitelisted
  const deployWhitelistContract = await whitelistContract.deploy(10);

  await deployWhitelistContract.deployed();

  console.log("Whitelist contract address: ", deployWhitelistContract.address);
}

// here we are calling the function we defined above
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.log(error);
    process.exit(1);
  });
