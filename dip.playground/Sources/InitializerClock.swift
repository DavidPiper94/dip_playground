import Foundation

public class InitializerClock: Clock {
    
    let identifier: String
    
    public init(identifier: String) {
        self.identifier = identifier
        print("creating \(type(of: self)) with identifier: \(identifier)")
    }
    
    deinit {
        print("deinit \(type(of: self)) with identifier: \(identifier)")
    }
    
    public func currentTime() -> Date { return Date() }
}
