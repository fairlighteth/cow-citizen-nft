pragma solidity ^0.8.4;
// SPDX-License-Identifier: GPL-3.0-or-later

// ░░░░░░░░░░░░░░░░▒▒▓▓▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▓▓▒▒░░░░░░░░░░░░░░░░
// ░░░░░░░░░▒▒▓▓█▓▓▒██░░░░░░░░░░░░░▓█▓▓▓▓▓▒▒▒▒▒░░░▒▒▒▒▓▓▓▓▓█▓▒░░░░░░░░░░░░██▓▓▓█▓▓▒▒░░░░░░░░░
// ░░░░░░▒█▓▒▒░░░░░█▓░░░░░░░░░░░▓█▓▒░░░░░░░▒▒▒▓██▓▒▒▒▒░░░░░░▒▓█▓░░░░░░░░░░░▓█░░░░░▒▒▓█▒░░░░░░
// ░░░░░▒█▒░░░░░░▒█▒░░░░░░░░░▒█▓▒░░░░░░░░░░░░▒█▒▒█▒░░░░░░░░░░░░▒▓█▓░░░░░░░░░▒█▒░░░░░░░█▓░░░░░
// ░░░░▓█▓▒▒▒░░░▓█░░░░░░░░▒█▓▒░░░░░░░░░░░░░░▓█░░░░█▓░░░░░░░░░░░░░░▒▓█▒░░░░░░░░▓█░░░▒▒▒▓█▓░░░░
// ░░░░▒█▒▒▒▒▓████▓▓▒░░▒█▓▒░░░░░░░░░░░░░░░░█▓░░░░░░▓█▒░░░░░░░░░░░░░░░▒▓█▒░░▒▒▓▓███▓▒▒▒▒█▒░░░░
// ░░░░░█▓░░░▓█░░░░░▒▓█▓░░░░░░░░░░░░░░░░░▓█▒░░░░░░░░▒█▓░░░░░░░░░░░░░░░░░▓█▓▒▒░░░░█▓░░░▓█░░░░░
// ░░░░░▒█░░█▓░░░░░░░░█▒░░░░░░░░░░░░░░░░██░░░░░░░░░░░░▓█░░░░░░░░░░░░░░░░▒█░░░░░░░░▓█░░█▒░░░░░
// ░░░░░░███▒░░░░░░░░░█▒░░░░░░░░░░░░░░▒█▒░░░░░░░░░░░░░░▒█▒░░░░░░░░░░░░░░▒█░░░░░░░░░▒███░░░░░░
// ░░░░░░▒▓█▓▒░░░░░░░░█▒░░░░░░░░░░░░░▓█░░░░░░░░░░░░░░░░░░█▓░░░░░░░░░░░░░▒█░░░░░░░░▒▓█▓▒░░░░░░
// ░░░░░░░░░░▒▓██▓▒░░░█▓░░░░░░░░░░░░█▓░░░░░░░░░░░░░░░░░░░░▓█▒░░░░░░░░░░░▓█░░░▒▓██▓▒░░░░░░░░░░
// ░░░░░░░░░░░░░░░▒▓██████▓▒░░░░░░▒█▒░░░░░░░░░░░░░░░░░░░░░░▒█▓░░░░░░▒▓██████▓▒░░░░░░░░░░░░░░░
// ░░░░░░░▒▒▒▓▓▓▓▓▓▓▓▓████████▓▒░▓█░░░░░░░░░░░░░░░░░░░░░░░░░░██░▒▓████████▓▓▓▓▓▓▓▓▓▒▒▒░░░░░░░
// ░░░█▓▓▒▒▒▒░░░░░░░░░████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░████████████░░░░░░░░░▒▒▒▒▓▓█░░░
// ░░█▓░░░░░░░░░░░░░░░████████████▓░░░░░░░░░░░░░░░░░░░░░░░░░░▓████████████░░░░░░░░░░░░░░░▓█░░
// ░▓█░░░░░░░░░░░░░░░░█████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█████████████░░░░░░░░░░░░░░░░█▓░
// ▒█▒░░░░░░░░░░░░░░░░███████████▓██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██▓███████████░░░░░░░░░░░░░░░░░█▒
// ▒█▓▓▒░░░░░░░░░░░░▒▓███▓▓▒▒░░░░░░█▒░░░░░░░░░░░░░░░░░░░░░░▒█░░░░░░▒▒▓▓███▓▒░░░░░░░░░░░░▒▓▓█▒
// ░░░░▒▓█▓▒░░▒▒▓██▓▒░█▓░░░░░░░░░░░▓█░░░░░░░░░░░░░░░░░░░░░░█▓░░░░░░░░░░░▓█░▒▓▓█▓▒▒░░▒▓█▓▓▒░░░
// ░░░░░░░░▒▓▓▒▒░░░░░░▓█░░░░░░░░░░░░█▓░░░░░░░░░░░░░░░░░░░░▒█░░░░░░░░░░░░█▓░░░░░░▒▒▓▓▒░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░▒█░░░░░░░░░░░░▒█░░░░░░░░░░░░░░░░░░░░█▒░░░░░░░░░░░░█▒░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░█▒░░░░░░░░░░░░█▓░░░░░░░░░░░░░░░░░░▓█░░░░░░░░░░░░▒█░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░█▓░░░░░░░░░░░░░█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▒░░░░░░░░░░░░▓█░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░▒█▒░░░░░░░░░░░▒██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██▓░░░░░░░░░░░▒█▒░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░░▒█░░░░░░░░░░▒███▓░░░░░░░░░░░░░░▓███▒░░░░░░░░░░█▒░░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░░░▓█░░░░░░░░▒█████▒░░░░░░░░░░░░▒█████▒░░░░░░░░█▓░░░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░░░░▓█░░░░░░▒███████░░░░░░░░░░░░███████▒░░░░░░█▓░░░░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░░░░░██░░░░▒█▒░▓█████░░░░░░░░░░█████▓░░█▓░░░░▓█░░░░░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░░░░░░█▓░░▓█░░░░░▒███▓░░░░░░░░▓███▒░░░░░█▓░░▓█░░░░░░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░░░░░░░█▒▓█░░░░░░░░░▓█▓░░░░░░▓█▓░░░░░░░░░█▓▒█░░░░░░░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░░░░░░░▒██░░░░░░░░░░░░▒█▓▒░▓█▒░░░░░░░░░░░░██▒░░░░░░░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░░░░░░░░▓█░░░░░░░░░░░░░▒▓██▓▒░░░░░░░░░░░░░█▓░░░░░░░░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓█░░░░░▒▒▓▓█▓▓▒▒░░▒▒▓▓█▓▓▒▒░░░░░▓█░░░░░░░░░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██▓█▓▓▒▒░░░░░░░░░░░░░░░░▒▒▓▓██▓█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒██▒░░░░░░░░░░░░░░░░░░░░░░▒▓█▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒█▓▒░░░░░░░░░░░░░░░░▒▓█▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓█▓▒░░░░░░░░░░▒▓█▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓█▓▒░░░░░▓█▓▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▓█▓▓█▓▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

import "erc721a/contracts/ERC721A.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CowCitizen is ERC721A, Pausable, Ownable {
    constructor() ERC721A("Cow Citizen", "CIT") {}

    /**
     * @dev See {IERC721Metadata-tokenURI}.
     */
    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        if (!_exists(tokenId)) revert URIQueryForNonexistentToken();

        string memory baseURI = _baseURI();
        return bytes(baseURI).length != 0 ? string(abi.encodePacked(baseURI, tokenId.toString(), "/metadata.json")) : '';
    }

    /**
    * @dev Base URI for computing {tokenURI}. If set, the resulting URI for each
    * token will be the concatenation of the `baseURI` and the `tokenId`. Empty
    * by default, can be overriden in child contracts.
    */
    function _baseURI() internal view virtual override returns (string memory) {
        return 'https://cloudflare-ipfs.com/ipfs/QmUNLLsPACCz1vLxQVkXqqLX5R1X345qqfHbsf67hvA3Nn/';
    }

    // Mint quantity to contract owner
    function mint(uint256 quantity) external onlyOwner {
        _safeMint(msg.sender, quantity);
    }

    // Mint quantity to recipient address
    function safeMint(address to, uint256 quantity) external onlyOwner {
        _safeMint(to, quantity);
    }
}
