import Foundation

class Clockzeption: Clock {
    
    let internalClock: Clock
    
    init(internalClock: Clock) {
        self.internalClock = internalClock
        print("creating \(type(of: self)) with internalClock: \(type(of: internalClock))")
    }
    
    deinit {
        print("deinit \(type(of: self)) with internalClock: \(type(of: internalClock))")
    }
    
    func currentTime() -> Date { return internalClock.currentTime() }
}

