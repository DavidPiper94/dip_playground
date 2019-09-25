import Foundation

class InitializerClock: Clock {
    
    let identifier: String
    
    init(identifier: String) {
        self.identifier = identifier
        print("creating \(type(of: self)) with identifier: \(identifier)")
    }
    
    deinit {
        print("deinit \(type(of: self)) with identifier: \(identifier)")
    }
    
    func currentTime() -> Date { return Date() }
}
