const hre = require("hardhat");

async function main() {
    const contract = await hre.ethers.deployContract("TomsWorld", ["0xB85Ea37DEcbA07B02500C96361Da26c08a6935b4"]);

    await contract.waitForDeployment();

    console.log(`Contract deployed to ${contract.target}`);
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});