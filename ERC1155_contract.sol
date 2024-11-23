// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Importing OpenZeppelin libraries
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Custom ERC1155 contract inheriting from ERC1155 and Ownable
contract ERC1155_contract is ERC1155, Ownable {
    constructor(string memory uri, address initialOwner)
        ERC1155(uri)
        Ownable(initialOwner)
    {
    }

    // Mint function for creating new tokens
    function mint(address to, uint256 id, uint256 amount, bytes memory data) public onlyOwner {
        _mint(to, id, amount, data);
    }

    // Mint batch function for creating multiple tokens
    function mintBatch(
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) public onlyOwner {
        _mintBatch(to, ids, amounts, data);
    }
}
