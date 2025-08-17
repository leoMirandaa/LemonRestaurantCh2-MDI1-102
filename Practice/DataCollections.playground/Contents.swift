import UIKit

/*
 Dictionaries
 Store key-value pairs. You use the key to access the value.
 
 Syntax
 var dictName = [key1:value1, key2:value2, key3:value3]
 */

// Example 1
var menuPrices:[String:Double] = ["Pizza": 12.99, "Salad": 6.99]
print(menuPrices)

print(menuPrices["Salad"]!)

// Example 2
var stock:[String: Int] = ["Burger": 5, "Soup": 3]
print(stock)
stock["Soup"] = 4 // Update the value for Soup
print(stock)

// Example 3
var ingredients:[String: Int] = ["Tomato": 3, "Cheese": 2]
ingredients["Lettuce"] = 4 // Adding Lettuche in ingredients
print(ingredients)

// For
for (key, value) in ingredients {
    print(key, value)
}

for (ingredient, price) in ingredients {
    print(ingredient, price)
}

