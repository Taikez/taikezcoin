const hre = require("hardhat");

async function main() {
    const HelloBlockchain = await hre.ethers.getContractFactory("HelloBlockchain");
    const hello = await HelloBlockchain.deploy();
    await hello.waitForDeployment();

    console.log("HelloBlockchain deployed to:", hello.target)
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});