/*:
 # Monday Stretch Problem 6.1
 ## Game of Threes
 
 ### Instructions:
 1. Make a method that takes an Int and returns an array of steps to get to 1.
 2. The game goes as follows: Start with the given Int and, if it is divisible by 3, divide it by 3, otherwise ADD OR SUBTRACT 1 (whichever makes the number divisible by 3, then divide it.
 3. Repeat step 2, until you reach 1.
 
 Example: Input: 100 Output: [100, 33, 11, 4, 1]
 
 ### Black Diamond 💎💎💎
 1. Instead of returning an array, return a dictionary where the keys are the values from the array, and the values are 0, -1, or 1 depending on how the number was manipulated to make it divisible by 3
 2. Sadly, the key value pairs won't be ordered :( Example: Input: 100 Output: [100 : -1 , 33 : 0, 11 : 1, 4 : -1 , 1 : 0]
*/

import UIKit

func threes(num: Int) -> [Int] {
    var nextNum = num
    var numResults: [Int] = []
    
    while nextNum > 1 {
        if (nextNum + 1) % 3 == 0 {
            numResults.append(nextNum)
            nextNum += 1
        } else if (nextNum - 1) % 3 == 0 {
            numResults.append(nextNum)
            nextNum -= 1
        } else {
            numResults.append(nextNum)
            nextNum /= 3
        }
    }
    
    return numResults
}

func threesDict(num: Int) -> [Int : Int] {
    var nextNum = num
    var numResults: [Int : Int] = [:]
    
    while nextNum > 1 {
        if (nextNum + 1) % 3 == 0 {
            numResults[nextNum] = 1
            nextNum += 1
        } else if (nextNum - 1) % 3 == 0 {
            numResults[nextNum] = -1
            nextNum -= 1
        } else {
            numResults[nextNum] = 0
            nextNum /= 3
        }
    }
    
    return numResults
}

print(threes(num: 88))
print(threesDict(num: 88))

//: [Next](@next)
