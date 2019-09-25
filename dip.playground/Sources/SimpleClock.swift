import Foundation

public class SimpleClock: Clock {
    
    public init() {
        print("creating \(type(of: self))")
    }
    
    deinit {
        print("deinit \(type(of: self))")
    }
    
    public func currentTime() -> Date { return Date() }
}
