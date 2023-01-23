contract;

use std::{auth::{AuthError , msg_sender}, hash::sha256 , logging::log};

/////////////
///Events declarations
/////////////

struct Sent {
    from: Address, 
    to: Address, 
    amount: u64,
}

/////////
//ABI method declarations
/////////

abi Token [
    //Mint tokens and can only be called by the creator 
    #[storage(read , write)]
    fn mint(receiver: Address , amount: u64);

    // Send a certain amount of tokens can be called by any address 
    #[storage(read , write)]
    fn send(receiver: Address , amount: u64);
]

////////
//Constants
////////

storage {
    balances: StorageMap<Address , u64> = StorageMap {} , 
}

//////////////////////
//Abi definitions
/////////////////

//The contract implement the "Token ABI "
impl Token for Contract {
    fn test_function() -> bool {
        true
    }
}
