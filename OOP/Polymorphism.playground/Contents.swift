import UIKit

/*
 Polymorphism is a concept in object-oriented programming that allows objects of different classes to be treated as objects of a common superclass. It enables methods to be overridden in subclasses, providing the ability to perform different actions based on the specific object type. Let's explore polymorphism in Swift with an example.

 Example: Creating a Shape Hierarchy with Polymorphism
 */

class Shape {
    func calculateArea() -> Double {
        fatalError("calculateArea() must be overridden")
    }
}

class Rectangle: Shape {
    private var width: Double
    private var height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    override func calculateArea() -> Double {
        return width * height
    }
}

class Circle: Shape {
    private var radius: Double

    init(radius: Double) {
        self.radius = radius
    }

    override func calculateArea() -> Double {
        return Double.pi * radius * radius
    }
}

/*
 In this example, we have a Shape class representing a generic shape. It has a calculateArea() method, which is marked as fatalError to enforce that subclasses must override it.

 We then create two subclasses: Rectangle and Circle. Each subclass overrides the calculateArea() method to provide the specific area calculation for that shape.

 Now, let's create instances of the shape classes and demonstrate polymorphism:
 */

let rectangle = Rectangle(width: 5.0, height: 3.0)
let circle = Circle(radius: 2.5)

let shapes: [Shape] = [rectangle, circle]

for shape in shapes {
    let area = shape.calculateArea()
    print("The area is: \(area)")
}

/*
 In this code, we create instances of Rectangle and Circle and store them in an array of type Shape. The shapes array holds objects of different subclasses but is treated as a collection of Shape objects.

 We then iterate over the shapes array and call the calculateArea() method on each object. Since the method is overridden in the subclasses, the appropriate implementation is called based on the actual object type. This is the essence of polymorphism, where the same method name behaves differently depending on the actual object being referenced.

 The output will be:
 
 The area is: 15.0
 The area is: 19.634954084936208

 Even though we treat the objects as instances of the Shape class, the overridden calculateArea() method is called based on the actual object type. The Rectangle object calculates its area based on its width and height, while the Circle object calculates its area based on its radius.

 Polymorphism allows for writing generic code that can operate on objects of different types, as long as they share a common superclass or implement a common protocol. It enables flexibility, code reuse, and enhances the extensibility and maintainability of the codebase.
 */

