import UIKit

/*
 In Swift, the Singleton design pattern is used to ensure that only one instance of a class can be created and provide a global point of access to that instance. This pattern is often used when you need to have a single, shared resource throughout your application.
 
 Here's an example implementation of a Singleton in Swift:
 */

class MySingleton {
    static let shared = MySingleton() // The shared instance
    
    private init() {
        // Private initializer to prevent external instantiation
    }
    
    func doSomething() {
        print("Singleton is doing something!")
    }
}

/*
 In this example, the MySingleton class has a private initializer, which means that it cannot be directly instantiated from outside the class. Instead, we define a static property called shared of type MySingleton, which provides the single instance of the class.
 
 To access the shared instance and use its methods, you simply refer to MySingleton.shared. Here's an example of using the doSomething() method:
 */

MySingleton.shared.doSomething() // Output: Singleton is doing something!

/*
 Since the initializer is private, you cannot create new instances of MySingleton using the init() method. The shared property is accessed using the dot syntax (MySingleton.shared) and provides a globally accessible point to the single instance of the class.
 
 The Singleton pattern ensures that there is only one instance of MySingleton throughout the lifetime of the application, making it convenient for managing shared resources or maintaining a consistent state across different parts of your codebase.
 */
