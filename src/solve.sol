// SPDX-License-Identifier: GPL-3.0
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
pragma solidity ^0.8.13;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */

 interface Lesson {
    function solveChallenge(uint256 guess, string memory yourTwitterHandle) external;
}

interface ERC {
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    function getTokenCounter() external returns(uint256);
}


 contract Solve {

    ERC public erc = ERC(0x31801c3e09708549c1b2c9E1CFbF001399a1B9fa);

     Lesson public lesson;

      constructor(address _lesson) {
        lesson = Lesson(_lesson);
     }


//    uint256 public x = 0;
//    uint256 public y = 1;

    function owner() external view returns(address) {
        return address(this);
        // x+=1;
    }

    function rng() internal view returns(uint256) {
        uint256 rng = uint256(keccak256(abi.encodePacked(address(this), block.prevrandao, block.timestamp))) % 1_000_000;
        return rng;
    }
    

    function soolve() public {
        lesson.solveChallenge(rng(), "moustafaezz11");
    }

    function go() external {
       soolve();
    }

    function blockstampnow() public view returns(uint256) {
        return block.timestamp;
    }

      function prevrandao() public view returns(uint256) {
        return block.prevrandao;
    }

     function onERC721Received(address, address, uint256, bytes calldata) external pure returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }

    function safeTransfer() external{
        erc.safeTransferFrom(address(this), msg.sender, erc.getTokenCounter()-1);
       }

    // fallback() external payable {
    //     soolve();
    // }
    // function doStuff() external {
    //      if (lesson.s_otherVar() <2) {
    //         lesson.callContractAgain(address(this), 0x874f33a1);
    //     }
    // }

//     fallback() external payable {
//         if (lesson.s_otherVar() <2) {
//             lesson.callContractAgain(address(this), 0x874f33a1);
//         }
//     }
}