import UIKit

/*
 Arrays
 
 Syntax
 var arrayName = [value1, value2, value3]
*/

var dishes:[String] = ["Pizza","Pasta","Soup"]
print(dishes)
print(dishes[0])
print(dishes[1])
print(dishes[2])
print(dishes.count)

// Example 2
var prices:[Double] = [9.99, 10.50, 6.00]
print(prices[2])
let total = prices[0] + prices[1]
print("Total for two dishes \(total)")
print("Total for two dishes \(String(format: "%.2f", total))")

// Mini-Exercise 1:
// Create an array with your top 3 favorite deserts and print them
let desserts:[String] = ["Cake", "Ice Cream", "Tiramisu"]
print(desserts)

/*
 Foor loops
    
 Syntax
 for element in collection {
    // Do something with element
 }
*/
var students:[String] = ["Joseph", "Vonda", "Alexis", "Edward", "Andrew", "Christian", "Eduardo", "Justin"]

for student in students {
    print(student)
}

/*
 forEach
 
 Syntax
 collection.forEach{ element in
    // Do something with element
 }
 */
students.forEach { student in
    print(student)
}

// Mini-Exercise 2
// Print the total number of desserts using .count
print(desserts.count)

// Example 3
let calories:[Int] = [0, 150, 180]

for calorie in calories {
    if calorie > 100 {
        print("High calorie \(calorie)")
    }
}

// Example 3 with forEach
calories.forEach { calorie in
    if calorie > 100 {
        print("High calorie \(calorie)")
    }
}
