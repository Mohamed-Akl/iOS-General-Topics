import UIKit

/*
 In iOS development, "inout" is a keyword used to define a parameter in a function that allows the function to modify the value of the argument passed to it. In other words, it enables passing a parameter by reference rather than by value. When you use "inout" for a parameter, any changes made to that parameter inside the function will affect the original value of the argument outside the function.
 */


// A simple function that swaps the values of two integers using "inout" parameters
func swapValues(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

// Usage example
var x = 10
var y = 20

print("Before swapping: x = \(x), y = \(y)") // Output Before swapping: x = 10, y = 20

// Note the usage of the '&' symbol before the variables to pass them as inout parameters.
swapValues(&x, &y)

print("After swapping: x = \(x), y = \(y)") // Output After swapping: x = 20, y = 10


/*
 In this example, the swapValues function uses inout for its two parameters, a and b. When we call the function, we pass x and y with an '&' symbol to indicate that we want to pass them as inout parameters. The function swaps the values of x and y, and the changes are reflected outside the function as well.
 */
