const hre = require("hardhat");

async function main() {
  const initialSupply = hre.ethers.utils.parseUnits("1000000000", 18);
  const Token = await hre.ethers.getContractFactory("CarbonCreditCoin");
  const token = await Token.deploy(initialSupply);
  await token.deployed();
  console.log(`Carbon Credit Coin deployed to: ${token.address}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
