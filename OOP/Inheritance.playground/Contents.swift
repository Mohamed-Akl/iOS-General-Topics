import UIKit

/*
 Inheritance is a key concept in object-oriented programming that allows the creation of new classes based on existing ones. It enables the subclass to inherit properties and methods from its superclass, promoting code reuse and facilitating the creation of specialized classes. Let's explore inheritance in Swift with an example.

 Example: Creating a Shape Hierarchy with Inheritance
 */

class Shape {
    var color: String

    init(color: String) {
        self.color = color
    }

    func printDescription() {
        print("This is a \(color) shape.")
    }
}

class Circle: Shape {
    var radius: Double

    init(color: String, radius: Double) {
        self.radius = radius
        super.init(color: color)
    }

    override func printDescription() {
        print("This is a \(color) circle with radius \(radius).")
    }

    func calculateArea() -> Double {
        return Double.pi * radius * radius
    }
}

class Rectangle: Shape {
    var width: Double
    var height: Double

    init(color: String, width: Double, height: Double) {
        self.width = width
        self.height = height
        super.init(color: color)
    }

    override func printDescription() {
        print("This is a \(color) rectangle with width \(width) and height \(height).")
    }

    func calculateArea() -> Double {
        return width * height
    }
}


/*
 In this example, we have a Shape class that serves as the superclass. It has a color property and a printDescription() method that prints the color of the shape.

 We then create two subclasses: Circle and Rectangle. Each subclass inherits the color property and the printDescription() method from the Shape superclass. Additionally, each subclass adds its own specific properties and methods: radius and calculateArea() for Circle, and width, height, and calculateArea() for Rectangle.

 The Circle subclass overrides the printDescription() method to provide a specialized description for a circle. It also adds the calculateArea() method to calculate the area of a circle based on its radius.

 The Rectangle subclass similarly overrides the printDescription() method and adds the calculateArea() method to calculate the area of a rectangle based on its width and height.

 Now, let's create instances of the shape classes and demonstrate inheritance:
 */

let redCircle = Circle(color: "red", radius: 5.0)
let blueRectangle = Rectangle(color: "blue", width: 4.0, height: 6.0)

redCircle.printDescription()      // Output: This is a red circle with radius 5.0.
print("Circle area: \(redCircle.calculateArea())")      // Output: Circle area: 78.53981633974483

blueRectangle.printDescription()  // Output: This is a blue rectangle with width 4.0 and height 6.0.
print("Rectangle area: \(blueRectangle.calculateArea())")  // Output: Rectangle area: 24.0


/*
 In this code, we create instances of Circle and Rectangle. Each object inherits the color property and the printDescription() method from the Shape superclass. We can call the overridden printDescription() method specific to each subclass.

 Additionally, we can call the calculateArea() method on each object. The appropriate implementation for the respective subclass is called, allowing us to calculate the area of the circle and the rectangle.

 Inheritance allows for code reuse and promotes a hierarchical organization of classes. It enables the creation of specialized classes that inherit properties and methods from more general classes, facilitating code organization and reducing redundancy. In Swift, inheritance is implemented using the class keyword and the super keyword to refer to the superclass.
 */
