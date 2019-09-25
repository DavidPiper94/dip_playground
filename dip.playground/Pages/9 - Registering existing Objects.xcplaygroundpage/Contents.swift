import Dip

let exampleClock = SimpleClock()

private let container = DependencyContainer { container in
    container.register { exampleClock as Clock }
}

let simpleClock: Clock = try! container.resolve()

/*
 * Output:
 * creating SimpleClock
 */
