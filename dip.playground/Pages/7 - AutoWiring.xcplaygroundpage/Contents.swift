import Dip

private let container = DependencyContainer { container in
    
    container.register { SimpleClock() as Clock }

    // All needed types need to be registered.
    container.register { Clockzeption(internalClock: $0) as Clockzeption }
}

let clock: Clockzeption = try! container.resolve()

/*
 * Output:
 * creating SimpleClock
 * creating Clockzeption with internalClock: SimpleClock
 */
