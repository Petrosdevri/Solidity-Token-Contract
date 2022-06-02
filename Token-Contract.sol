// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


/** 
* Token contract integrating features from the ERC20 standard, 
* its IERC20 interface and the SafeMath library.
*/

import "./ERC20.sol";

contract NewToken is ERC20 {
    string constant name = 'New Token';
    string constant symbol = "NT";
    uint public decimals = 18;
    string constant supply = "100000000000";
    uint public rate = 2; //1 * 2 wei

    function mint(uint amount) external {
        _balances[msg.sender] += amount;
        _balances[supply] += amount;
        emit Transfer(address(0), msg.sender, amount);
    } 

    function burn(uint amount) external {
        _balances[msg.sender] -= amount;
        _balances[supply] -= amount;
        emit Transfer(msg.sender, address(0), amount);
    }  
}
