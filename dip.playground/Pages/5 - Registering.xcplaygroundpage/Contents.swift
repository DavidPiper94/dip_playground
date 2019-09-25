import Dip

private let container = DependencyContainer { container in
    // Register the class SimpleClock, which implements the protocol Clock.
    container.register { SimpleClock() as Clock }
}

// Resolving the dependency.
let simpleClock: Clock = try! container.resolve()

/*
 * Output:
 * creating SimpleClock
 */
