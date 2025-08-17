import UIKit

/*
 func functionName(parameterName: DataType) -> DataType{
    
    this is the body of the function
 
 }
 */
 
// ---- Example 1 ----
func greet(person: String) -> String{
    let greeting = "Hello " + person + "!"
    return greeting
}

// function call
let message = greet(person: "Alice")
print(message)

// ---- Example 2 ----
func greeting(person: String,formally: Bool = false) -> String{
    if formally {
        return "Greeting, " + person + "!"
    }else{
        return "Hi " + person + "!"
    }
}

print(greeting(person:"Person",formally: true))
print(greeting(person:"Jane",formally: false))

// --- Example 3 ----
func calculateTotal(price: Double, quantity: Int)->Double{
    return price * Double(quantity)
}

let total = calculateTotal(price: 15.45, quantity: 3)

print(total)

// mini-ex 1: Create a function deliveryTime(minutes:) that returns "Ready in X minutes".

// mini-ex 2: Create a function to calculate price + tax and show result.

//mini-ex 3:
//Create a function applyDiscount(price: Double, discount: Double) that
//receives the original price and a discount percentage, and returns the
//final price after applying the discount.
