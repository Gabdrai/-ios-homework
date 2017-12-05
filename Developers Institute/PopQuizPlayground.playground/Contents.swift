//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/* How do you print the string above? */
print(str)

/* Name some basic data types. */
 "Int"
"String"
"Double"
"Bool"

/* What is the difference between an array and a dictionary? */
//an array is a group of values put together.
// a dictionary is the name of all the values.

/* Create a class for a Person with name, age, height, gender, and race as its properties */
class Person {
    let name: String
    var age: Int
    var height: Int
    let gender: String
    let race: String
}


/* Describe and/or code binary search. */


/* Imagine you have two array a = [1,2,3,4,5] and b =[3,2,9,3,7], write a function to find out common elements in both array. */

var Array1: [Int] = [1,2,3,4,5]
var Array2: [Int] = [3,2,9,3,9]

func containSameElements(var Array1: [String], var Array2: [String]) -> Bool {
    if firstArray.count != secondArray.count {
        return false
    } else {
        Array1.sort()
        Array2.sort()
        return firstArray == secondArray
    }
}















