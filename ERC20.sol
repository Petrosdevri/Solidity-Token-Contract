// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


/** 
* ERC20; a library for EIP-20 Token Standard.
*/

import "./IERC20.sol";

contract ERC20 is IERC20 {
    uint private _totalSupply;
    mapping(address => uint) private _balances;
    mapping(address => mapping(address => uint)) private _allowances;

    function totalSupply() public view returns (uint) {
        return _totalSupply;
    }

    function transfer(address recipient, uint amount) external returns (bool) {
        _balances[msg.sender] -= amount;
        _balances[recipient] += amount;
        emit Transfer(msg.sender, recipient, amount);
        return true;
    }

    function approve(address spender, uint amount) external returns (bool) {
        require(amount > 0, 'cannot approve amounts equal to zero');
        require(spender != address(0), 'must not be a zero address');
        _allowances[msg.sender][spender] = amount
        emit Approval(msg.sender, spender, amount);
        return true;
    }    
    

    function transferFrom( address sender, address recipient, uint amount) external returns (bool) {
        require(amount > 0, 'cannot transfer amounts equal to zero');
        require(sender != address(0), 'must not be a zero address');
        require(recipient != address(0), 'must not be a zero address');
        _allowances[sender][msg.sender] -= amount;
        _balances[sender] -= amount;
        _balances[recipient] += amount;
        emit Transfer(sender, recipient, amount);
        return true;
    }
}
