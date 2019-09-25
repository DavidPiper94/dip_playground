import Foundation

public class Clockzeption: Clock {
    
    let internalClock: Clock
    
    public init(internalClock: Clock) {
        self.internalClock = internalClock
        print("creating \(type(of: self)) with internalClock: \(type(of: internalClock))")
    }
    
    deinit {
        print("deinit \(type(of: self)) with internalClock: \(type(of: internalClock))")
    }
    
    public func currentTime() -> Date { return internalClock.currentTime() }
}

