// SPDX-License-Identifier: MIT
pragma solidity ^0.6;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./ComptrollerInterface.sol";
import "./CTokenInterfaces.sol";

//0x6b175474e89094c44da98b954eedeac495271d0f
contract MyDeFiProject {
    IERC20 dai;
    CTokenInterfaces cDai;

    //ComptrollerInterface comptroller;

    constructor(address _dai, address _cDai) public {
        dai = IERC20(_dai);
        cDai = CTokenInterfaces(_cDai);
        //comptroller = ComptrollerInterface(_comptroller);
    }

    function invest(uint256 _amount) external {
        // Get DAI. 
        dai.approve(address(cDai), _amount);
        cDai.mint(_amount);
    }

    function investEth(uint256 _amount) external {
        cDai.mint(_amount);
    }

    function cashOut(uint256 _amount) external {
        cDai.redeem(_amount);
    }

    // function borrow() external {
    //     dai.approve(address(cDai),2000);
    //     cDai.mint(2000);
    //     address[] markets = new address[](1);
    //     comptroller.enterMarkets();

    // }
}
