import Dip

// Tags allow to identify registered dependencies.
enum Tags: String, DependencyTagConvertible {
    case taggedClock
}

private let container = DependencyContainer { container in
    // Register with a tag to be identified when resolving.
    container.register(tag: Tags.taggedClock) { InitializerClock(identifier: Tags.taggedClock.rawValue) as InitializerClock }
    container.register(tag: "Tagged") { InitializerClock(identifier: "Tagged") as InitializerClock }
}

let taggedClock:  InitializerClock = try! container.resolve(tag: Tags.taggedClock)
let anotherClock: InitializerClock = try! container.resolve(tag: "Tagged")

/*
 * Output:
 * creating InitializerClock with identifier: taggedClock
 * creating InitializerClock with identifier: Tagged
 */
