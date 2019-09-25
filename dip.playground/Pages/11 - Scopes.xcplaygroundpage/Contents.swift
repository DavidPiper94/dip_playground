import Dip

// Tags allow to identify registered dependencies.
enum Tags: String, DependencyTagConvertible {
    case unique, shared, singleton
}

private let container = DependencyContainer { container in
    
    // 1. Scope unique creates a new instance on each resolve. It's the default scope.
    container.register(.unique, tag: Tags.unique) { InitializerClock(identifier: "unique") as Clock }
    
    // 2. Scope shared holds on to the created instances within one call to resolve.
    container.register(.shared, tag: Tags.shared) { InitializerClock(identifier: "shared") as Clock }
    
    // 3. Scope singleton holds on to the created instances within the lifecycle of this container.
    container.register(.singleton, tag: Tags.singleton) { InitializerClock(identifier: "singleton") as Clock }
}

let unique1: Clock = try! container.resolve(tag: Tags.unique)
let unique2: Clock = try! container.resolve(tag: Tags.unique)

let shared1: Clock = try! container.resolve(tag: Tags.shared)
let shared2: Clock = try! container.resolve(tag: Tags.shared)

let singleton1: Clock = try! container.resolve(tag: Tags.singleton)
let singleton2: Clock = try! container.resolve(tag: Tags.singleton)

/*
 * Output:
 * creating InitializerClock with identifier: unique
 * creating InitializerClock with identifier: unique
 * creating InitializerClock with identifier: shared
 * creating InitializerClock with identifier: shared
 * creating InitializerClock with identifier: singleton
 */
