const Klezyx = artifacts.require("Klezyx")
const SafeMath = artifacts.require('SafeMath')

module.exports = function (deployer, network, accounts) {
    deployer.deploy(SafeMath, {
        from: accounts[0]
    })
    deployer.link(SafeMath, Klezyx)
    deployer.deploy(Klezyx, 'Klezyx', 'KLX', '100000000000000000', {
        from: accounts[0]
    })
}
