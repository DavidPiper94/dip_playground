import Foundation

class SimpleClock: Clock {
    
    init() {
        print("creating \(type(of: self))")
    }
    
    deinit {
        print("deinit \(type(of: self))")
    }
    
    func currentTime() -> Date { return Date() }
}
