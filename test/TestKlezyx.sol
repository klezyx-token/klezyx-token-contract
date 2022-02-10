pragma solidity ^0.8.0;

import "../contracts/klezyx.sol";
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";

contract TestKlezyx {
    function DeployerBalance() {
        Klezyx KLX = Klezyx(DeployedAddresses.Klezyx());
        uint balance = 10000000000;
        Assert.equal(KLX.balanceOf(DeployedAddresses.Deployer()), balance);
    }
    function TestBalance() {
        Klezyx KLX = new Klezyx();
        uint testbalance = 10000000000;
        Assert.equal(KLX.balanceOf(DeployedAddresses.Test()), testbalance);
    } 
}