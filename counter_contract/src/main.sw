contract;

storage {
    counter: u64 = 0,
}
abi Counter {
    #[storage(read, write)] // Here's where we can define how to interact with the contracts 
    fn increment();

    #[storage(read)]
    fn counter() -> u64;
}

impl Counter for Contract {
    #[storage(read)]
    fn counter() -> u64 {
        return storage.counter;
    }

    #[storage(read, write)]
    fn increment() {
        storage.counter = storage.counter + 1;
    }
}
