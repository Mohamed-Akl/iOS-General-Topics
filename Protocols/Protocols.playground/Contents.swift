import UIKit

/*
 In Swift, protocols define a blueprint of methods, properties, and other requirements that can be adopted by classes, structs, or enums. They allow you to define a set of rules that types must conform to, enabling you to write flexible and reusable code. Let's discuss protocols in Swift with an example:
 */

protocol Person {
    var name: String { get }
    var age: Int { get }
    
    func introduce()
}

struct Student: Person {
    var name: String
    var age: Int
    
    func introduce() {
        print("Hi, I'm \(name) and I'm \(age) years old. I'm a student.")
    }
}

struct Teacher: Person {
    var name: String
    var age: Int
    
    func introduce() {
        print("Hello, I'm \(name) and I'm \(age) years old. I'm a teacher.")
    }
}

// Create instances of the conforming types
let student = Student(name: "ahmed", age: 20)
let teacher = Teacher(name: "Mr. Mohamed", age: 35)

// Call the introduce() method through the Person protocol
student.introduce() // Output: "Hi, I'm ahmed and I'm 20 years old. I'm a student."
teacher.introduce() // Output: "Hello, I'm Mr. Mohamed and I'm 35 years old. I'm a teacher."



/*
 In this example, we define a protocol named Person with two requirements: a name property of type String and an age property of type Int, as well as an introduce() method.
 
 We then create two types, Student and Teacher, that conform to the Person protocol. Both types implement the name and age properties, and provide their own implementation of the introduce() method according to the requirements of the protocol.
 
 We create instances of Student and Teacher and call the introduce() method on them. Since both types conform to the Person protocol, we can treat them as instances of Person and call the introduce() method through the protocol.
 
 Using protocols in this manner allows us to define a common interface for different types. It enables us to write code that can work with any type conforming to the Person protocol, providing a level of abstraction and flexibility in our code.
 */
