import Dip

private let container = DependencyContainer { container in
    container.register(tag: "container") { InitializerClock(identifier: "container") as Clock }
}

private let anotherContainer = DependencyContainer { container in
    container.register(tag: "anotherContainer") { InitializerClock(identifier: "anotherContainer") as Clock }
}

anotherContainer.collaborate(with: container)

let clockFromContainer: Clock = try! anotherContainer.resolve(tag: "container")

/*
 * Output
 * creating InitializerClock with identifier: container
 */
