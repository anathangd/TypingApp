import UIKit

var greeting = "Hello, playground"

var numberIncorrect = 1
var numberCorrect = 2
let start = greeting.index(greeting.startIndex, offsetBy: numberCorrect)
let end = greeting.index(greeting.endIndex, offsetBy: -(greeting.count-(numberCorrect + numberIncorrect)))
let range = start..<end

let mySubstring = greeting[range]

print(mySubstring)

