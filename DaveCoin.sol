pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract DaveCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function DaveCoin(address _owner)  UpgradeableToken(_owner) {
    name = "DaveCoin";
    symbol = "XDCO";
    totalSupply = 4500000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}