pragma solidity ^0.8.0;

contract SupplyChain {
    struct Product {
        uint id;
        string name;
        string origin;
        string metadata;
    }
    mapping(uint => Product) public products;
    uint public productCount;

    function addProduct(string memory _name, string memory _origin, string memory _metadata) public {
        productCount++;
        products[productCount] = Product(productCount, _name, _origin, _metadata);
    }
}