//// SPDX-License-Identifier: MIT
// Visibility and Getters
// State Variable Visibility
// public
// Public state variables differ from internal ones only in that the compiler automatically generates getter functions for them, which allows other contracts to read their values. When used within the same contract, the external access (e.g. this.x) invokes the getter while internal access (e.g. x) gets the variable value directly from storage. Setter functions are not generated so other contracts cannot directly modify their values.

// internal
// Internal state variables can only be accessed from within the contract they are defined in and in derived contracts. They cannot be accessed externally. This is the default visibility level for state variables.

// private
// Private state variables are like internal ones but they are not visible in derived contracts.

// Warning

// Making something private or internal only prevents other contracts from reading or modifying the information, but it will still be visible to the whole world outside of the blockchain.

// Function Visibility
// Solidity knows two kinds of function calls: external ones that do create an actual EVM message call and internal ones that do not. Furthermore, internal functions can be made inaccessible to derived contracts. This gives rise to four types of visibility for functions.

// external
// External functions are part of the contract interface, which means they can be called from other contracts and via transactions. An external function f cannot be called internally (i.e. f() does not work, but this.f() works).

// public
// Public functions are part of the contract interface and can be either called internally or via message calls.

// internal
// Internal functions can only be accessed from within the current contract or contracts deriving from it. They cannot be accessed externally. Since they are not exposed to the outside through the contract’s ABI, they can take parameters of internal types like mappings or storage references.

// private
// Private functions are like internal ones but they are not visible in derived contracts.

//uint256 favoriteNumber; this is private by deault settings 
//bool favoriteBool = false;
//string favoriteString = "String Value";
//int256 favoriteInt = -5;
//address favoriteAddress = 0x63734e1c9007ebf216620e8fF0233B0c14fae159;
//bytes32 favoriteBytes = "cat"; //we can do bytes3 4 5 till 32


pragma solidity >=0.6.0 < 0.9.0; // we want our version between 0.6.0 and 0.9.0

contract SimpleStorage{

    uint256 favoriteNumber; //favoriteNumber; this is null value  ---  favoriteNumber = 5; this is valued 5
   
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }
    // view, pure(used fo some type of math
    function retrieve() public view returns(uint256){
        return favoriteNumber;

    }
}
