// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import { SimpleStorage }from "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public simpleStorageList;
    function createSimpleStorageContract () public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageList.push(simpleStorage);
    }
    function getSimpleStorageList ()public view returns (SimpleStorage[] memory){
        return simpleStorageList;
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageFavoriteNumber) public {
        SimpleStorage s=simpleStorageList[_simpleStorageIndex];
        s.store(_simpleStorageFavoriteNumber);
    }

    function sfRetrieve(uint256 _simpleStorageIndex)public view returns (uint256){
       return simpleStorageList[_simpleStorageIndex].retrieve();
    }

}