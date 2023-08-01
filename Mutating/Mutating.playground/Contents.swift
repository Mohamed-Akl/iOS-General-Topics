import UIKit


/*
 In Swift, the mutating keyword is used in the context of methods inside value types (structs and enums) to indicate that the method is allowed to modify the properties of the instance. This is necessary because by default, methods on value types are not allowed to modify the properties.
 
 When you create a value type (e.g., struct or enum), the properties of that type are immutable by default, meaning you cannot modify them directly within a method defined on that type. However, there might be cases when you do need to modify the properties of a value type inside a method. In such cases, you need to mark the method with the mutating keyword to explicitly indicate that the method is allowed to modify the properties.
 */


struct Point {
    var x: Int
    var y: Int

    mutating func moveByX(_ deltaX: Int, y deltaY: Int) {
        x += deltaX
        y += deltaY
    }
}

var point = Point(x: 10, y: 20)
print(point) // Output: Point(x: 10, y: 20)

point.moveByX(5, y: 10)
print(point) // Output: Point(x: 15, y: 30)



/*
 In this example, we have a Point struct with x and y properties. The method moveByX(_:y:) is marked with the mutating keyword, which allows it to modify the x and y properties of the Point instance. Without the mutating keyword, the method would not be allowed to modify the properties.

 To summarize, use the mutating keyword in Swift when you define a method inside a value type (struct or enum) that needs to modify the properties of that instance. It is necessary to explicitly declare the method as mutating to allow property modifications within value types.
 */






// other example using "enum"

enum Counter {
    case value(Int)

    mutating func increment() {
        switch self {
        case .value(let current):
            self = .value(current + 1)
        }
    }
}

var counter = Counter.value(5)
print(counter) // Output: value(5)

counter.increment()
print(counter) // Output: value(6)

counter.increment()
print(counter) // Output: value(7)


/*
 In this example, we have an enum called Counter, which represents a simple counter with a numeric value. The increment() method is marked with the mutating keyword, indicating that it can modify the enum instance (i.e., increment the value).

 When the increment() method is called on counter, it will update the counter enum instance by incrementing its value by 1.
 */
