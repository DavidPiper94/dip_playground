import Dip

private let container = DependencyContainer { container in
    container.register(tag: "someValue") { "Hello" }
}

let resolvedValue = try! container.resolve(String.self, tag: "someValue")
print(resolvedValue)

let theSameValue: String = try! container.resolve(tag: "someValue")
print(theSameValue)

/*
 * Output:
 * Hello
 * Hello
 */
