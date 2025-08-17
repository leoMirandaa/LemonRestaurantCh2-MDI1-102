import UIKit

// variable - var
// constants - let

var greeting = "Hello, playground"

let day = "Thursday"
let dailyTemp = 75

print("Today is \(day) and the temperature is \(dailyTemp) degrees.")

var temperature = 80
print("The temperaature in the morning is: \(temperature)")
temperature = 85
print("The temperaature in the afternoon is: \(temperature)")

temperature = dailyTemp
print("The temperaature in the evening is: \(temperature)")

// ---- Game score ----
print("The game score")
let levelScore = 10
var gameScore = 0

gameScore += levelScore
print("The game score is: \(gameScore)")

var levelBonusScore = 10.0
levelBonusScore = 20

print("The level bonus score is \(levelBonusScore)")
gameScore += Int(levelBonusScore)
print("The game final score is \(gameScore)")

let levelLowestScore = 50
let levelHighestScore = 100
let levels = 10

let levelScorDiff = levelHighestScore - levelLowestScore
let levelAv = levelScorDiff / levels

print("The level score is \(levelAv)")

// int - 10
// double - 50.4
// string - "hello"

// mini-ex: define a let for a dish name and a var for its order count.
let dishName = "Pizza"
var orderCount = 2
print("\(dishName) order count is: \(orderCount)")

// Swift datatypes
let dishName2: String = "Pasta"
let price:Double = 9.99
let inStock: Bool = true
let qty : Int = 3
