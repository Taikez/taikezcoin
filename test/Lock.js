const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("HelloWorld", function () {
  it("Should return the initial greeting", async function () {
    const HelloWorld = await ethers.getContractFactory("HelloWorld");
    const hello = await HelloWorld.deploy();
    await hello.waitForDeployment();  

    expect(await hello.greeting()).to.equal("Hello, Blockchain!");
  });
});
