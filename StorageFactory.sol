//SPDX-// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol"; // Learn interfaces and inheritance
//with is SimpleStorage now I can access everything at simplestorage contract

contract StorageFactory is SimpleStorage{


    SimpleStorage[] public simpleStorageArray;
    //calling contracts on an another contract

    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        //Address - ABI( Application Binary Interface, is basically how you call functions in a contract and get data back.) You need this 2 things when accessing contracts

      return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);

    }
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
    }


}