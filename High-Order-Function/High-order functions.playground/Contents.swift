import UIKit

/*
 Map: The map function applies a given closure to each element of a collection and returns an array containing the transformed elements.
 */

let map_numbers = [1, 2, 3, 4, 5]
let squaredNumbers = map_numbers.map { $0 * $0 }
print(squaredNumbers) // Output: [1, 4, 9, 16, 25]

//------------------------------------------------------------

/*
 Filter: The filter function evaluates a closure for each element of a collection and returns a new array containing only the elements that satisfy the given condition.
 */

let filter_numbers = [1, 2, 3, 4, 5]
let evenNumbers = filter_numbers.filter { $0 % 2 == 0 }
print(evenNumbers) // Output: [2, 4]

//------------------------------------------------------------

/*
 Reduce: The reduce function combines all elements of a collection into a single value, using a closure that specifies the combining logic.
 */

let reduce_numbers = [1, 2, 3, 4, 5]
let sum = reduce_numbers.reduce(0, { $0 + $1 })
print(sum) // Output: 15

//------------------------------------------------------------

/*
 Sorted: The sorted function returns a new array with the elements of the original collection sorted based on a given closure.
 */

let sorted_numbers = [5, 2, 3, 1, 4, 1]
let sortedNumbers = sorted_numbers.sorted { $0 < $1 }
print(sortedNumbers) // Output: [1, 1, 2, 3, 4, 5]

//------------------------------------------------------------

/*
 CompactMap: The compactMap function transforms the elements of a collection using a closure and returns an array containing only the non-nil results.
 */

let compactMap_numbers = ["1", "2", "3", "four", "5"]
let parsedNumbers = compactMap_numbers.compactMap { Int($0) }
print(parsedNumbers) // Output: [1, 2, 3, 5]





//Question: what is the different between map and compactmap?

/*
 Answer:
 The main difference between map and compactMap lies in their handling of optional values within the closure.
 
 
 Here's an example using map:
 
 let numbers = ["1", "2", "3", "four", "5"]
 let parsedNumbers = numbers.map { Int($0) }
 print(parsedNumbers) // Output: [Optional(1), Optional(2), Optional(3), nil, Optional(5)]

 
 
 Here's an example using compactMap:
 
 let numbers = ["1", "2", "3", "four", "5"]
 let parsedNumbers = numbers.compactMap { Int($0) }
 print(parsedNumbers) // Output: [1, 2, 3, 5]

 
 Summary:
 
 compactMap automatically unwraps optionals and removes nil values from the resulting array, providing a more streamlined way to work with optional values.
 
 */
