const {ethers} = require("hardhat");

async function main() {

    const FlagsNFT = await ethers.getContractFactory("FlagsNFT");
    const flagsNFT = await FlagsNFT.deploy();
    await flagsNFT.deployed();

 console.log("FlagsNFT is deployed at address :",flagsNFT.address);


}
main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });