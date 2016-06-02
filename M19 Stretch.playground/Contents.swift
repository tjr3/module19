//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let numberArray = [11,23,43,44,59,43,88,92,58,11,13,14,15]

var filteredArray: [Int] = []

for number in numberArray {
    if (number / 3 == 0) {
        print(filteredArray+= [number])
    }
}
