import Dip

private let container = DependencyContainer { container in
    
    container.register { SimpleClock() as Clock }
    
    container.register { () -> Clockzeption in
        let simpleClock: Clock = try! container.resolve()
        return Clockzeption(internalClock: simpleClock)
    }
}

let clock: Clockzeption = try! container.resolve()

/*
 * Output:
 * creating SimpleClock
 * creating Clockzeption with internalClock: SimpleClock
 */
