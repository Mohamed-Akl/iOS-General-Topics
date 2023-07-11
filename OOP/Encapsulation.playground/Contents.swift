import UIKit

/*
 Encapsulation is a fundamental principle of object-oriented programming that promotes bundling data and methods together within a class and hiding internal implementation details. It allows for data abstraction and provides controlled access to the internal state of an object. Let's explore encapsulation in Swift with an example.

 Example: Creating a Person Class with Encapsulation
 */

class Person {
    private var name: String
    private var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func getName() -> String {
        return name
    }

    func getAge() -> Int {
        return age
    }

    func celebrateBirthday() {
        age += 1
        print("Happy birthday! Now \(name) is \(age) years old.")
    }
}


/*
 In this example, we have a Person class that encapsulates the data related to a person's name and age:

 Properties:

 name and age are private properties, meaning they can only be accessed within the class itself. They are not directly accessible from outside the class.
 Initializer:

 The init method is used to initialize the Person object with a name and age.
 Methods:

 getName and getAge are public methods that provide read-only access to the private properties. They allow other objects to retrieve the person's name and age without modifying them directly.
 celebrateBirthday is a public method that increments the person's age by 1 and prints a birthday celebration message. It can modify the private age property internally.
 
 Now, let's create an instance of the Person class and interact with it:
 */

let john = Person(name: "John", age: 25)
print(john.getName())  // Output: John
print(john.getAge())   // Output: 25

john.celebrateBirthday()  // Output: Happy birthday! Now John is 26 years old.
print(john.getAge())      // Output: 26


/*
 In this code, we create an instance of the Person class named john. We use the public methods getName and getAge to retrieve the person's name and age. We also call the celebrateBirthday method to increment the person's age and print a birthday message. The private properties name and age are not directly accessible from outside the class, maintaining encapsulation.

 Encapsulation ensures that the internal state of an object is protected from direct manipulation. It provides a clear interface to interact with objects while hiding the implementation details. This allows for better control over the object's behavior and promotes code maintainability and reusability.
 */
