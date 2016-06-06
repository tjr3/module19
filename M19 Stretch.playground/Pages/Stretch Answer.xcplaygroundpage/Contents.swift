//: [Previous](@previous)

import Foundation

var str = "Hello, playground"



let numberArray = [11,23,43,44,59,43,88,92,58,11,13,14,15]
let array = numberArray.filter({$0 % 3 == 0})
print(array)


// Other option
let secondFilteredArray = numberArray.filter{ (number) -> Bool in
return number % 3 == 0
}



//*** #2 ***\\

let reducedNumber = numberArray.reduce(0) { (a, b) -> Int in
    if a > b {
        return a
    } else {
        return b
    }
}
print(reducedNumber)

// Another Option
let anotherReducedNumber = numberArray.reduce(0) { (a, b) -> Int in
    return a > b ? a : b
}
print(anotherReducedNumber)


// Shorter Option
let evenShorter = numberArray.reduce(0) {$0 > $1 ? $0:$1}



//*** #3 ***\\

let iHeartDevMtn = ["I", "love", "DevMountain"]
let combinedString = iHeartDevMtn.reduce("", combine: +)

// with spaces
let otherString = iHeartDevMtn.reduce("", combine: {$0 + " " + $1})
print(otherString)


// solving white space before "I"
let anotherString = iHeartDevMtn.reduce("", combine: {$0 == "" ? $1 : $0 + " " + $1})
print(anotherString)


