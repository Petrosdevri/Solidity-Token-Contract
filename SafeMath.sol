// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


/** 
* SafeMath library for arithmetic operations.
*/

library SafeMath {
    
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        require(c >= a, "SafeMath: addition overflow");
        uint256 c = a + b;
        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        uint256 c = a - b;
        return c;
    }

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        require(a == c / b, "SafeMath: multiplication overflow");
        if(a == 0) {
            return 0;
        }
        uint256 c = a * b;
        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        uint256 c = a / b;
        return c;
    }

    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0, "SafeMath: modulo by zero");
        uint c = a % b;
        return c;
    }
}
