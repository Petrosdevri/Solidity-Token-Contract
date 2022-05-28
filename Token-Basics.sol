// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.8;

contract NewToken {
    string public constant symbol NT;
    string public constant name "New Token";
    uint public constant decimals = 18;
    uint public constant rate = 2;
    
    interface IERC20 {

    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function transfer(address recipient, uint256 amount) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner, address indexed spender, uint256 value);
}
    
    library SafeMath {

        function add(uint256 a, uint256 b) internal pure returns (uint256) {
            uint256 c = a + b;
            require(c >= a, "SafeMath: addition overflow");
            
            return c;
        }

        function sub(uint256 a, uint256 b) internal pure returns (uint256) {
            require(b <= a, "SafeMath: subtraction overflow");
            uint256 c = a - b;

            return c;
        }

        function mul(uint256 a, uint256 b) internal pure returns (uint256) {

            if(a == 0) {
                return 0;
            }

            uint256 c = a * b;
            require(a == c / b, "SafeMath: multiplication overflow");

            return c;
        }

        function div(uint256 a, uint256 b) internal pure returns (uint256) {
            require(b > 0, "SafeMath: division by zero");
            uint256 c = a / b;

            return c;
        }

        function mod(uint256 a, uint256 b) internal pure returns (uint256) {
            require(b != 0, "SafeMath: modulo by zero");
            return a % b;
        }
    }
