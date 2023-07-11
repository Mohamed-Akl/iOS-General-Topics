import UIKit

/*
 Abstraction is a key concept in object-oriented programming that simplifies complex systems by focusing on essential details while hiding unnecessary complexity. It allows developers to create abstract classes or protocols that define the behavior and requirements, without specifying the exact implementation. Let's explore abstraction in Swift with an example.
 
 Example: Creating an Abstract Class and Conforming Classes
 */

protocol Vehicle {
    func startEngine()
    func stopEngine()
    func accelerate()
}

class Car: Vehicle {
    func startEngine() {
        print("Car engine started.")
    }
    
    func stopEngine() {
        print("Car engine stopped.")
    }
    
    func accelerate() {
        print("Car is accelerating.")
    }
}

class Motorcycle: Vehicle {
    func startEngine() {
        print("Motorcycle engine started.")
    }
    
    func stopEngine() {
        print("Motorcycle engine stopped.")
    }
    
    func accelerate() {
        print("Motorcycle is accelerating.")
    }
}

/*
 In this example, we define an Vehicle protocol that represents the abstraction of a vehicle. It declares three methods: startEngine(), stopEngine(), and accelerate(). These methods represent common actions that any vehicle should be able to perform.
 
 We then create two classes, Car and Motorcycle, that conform to the Vehicle protocol. Each class provides its own implementation of the protocol methods.
 
 Now, let's create instances of the classes and demonstrate abstraction:
 */

let myCar: Vehicle = Car()
let myMotorcycle: Vehicle = Motorcycle()

myCar.startEngine()      // Output: Car engine started.
myCar.accelerate()       // Output: Car is accelerating.
myCar.stopEngine()       // Output: Car engine stopped.

myMotorcycle.startEngine()   // Output: Motorcycle engine started.
myMotorcycle.accelerate()    // Output: Motorcycle is accelerating.
myMotorcycle.stopEngine()    // Output: Motorcycle engine stopped.


/*
 In this code, we create instances of Car and Motorcycle and assign them to variables of type Vehicle. This allows us to treat these objects abstractly as vehicles, without being concerned about their specific implementations.
 
 We can then call the startEngine(), accelerate(), and stopEngine() methods on the myCar and myMotorcycle objects. The appropriate implementation for each object is called based on their actual type.
 
 Abstraction allows us to define a common interface through protocols or abstract classes, hiding the details of the implementation. In this example, the Vehicle protocol defines the contract that any vehicle should adhere to, while the Car and Motorcycle classes provide their own specific implementations of the vehicle behavior.
 
 Abstraction helps in creating modular and reusable code by providing a clear separation between interface and implementation. It allows developers to work at a higher level of abstraction, focusing on what an object should do rather than how it does it.
 */
