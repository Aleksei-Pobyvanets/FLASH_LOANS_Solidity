// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Import this file to use console.log
import "hardhat/console.sol";

contract Car {
    string public model;
    address public owner;

    constructor(string memory _model, address _owner){
        model = _model;
        owner = _owner;
    }
}

contract carFactory {
    Car[] public cars;

    function create(string memory _model) public {
        Car car = new Car(_model, address(this));
        cars.push(car);
    }

}
