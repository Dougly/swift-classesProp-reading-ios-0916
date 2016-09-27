//: Playground - noun: a place where people can play

import UIKit

class Square {
    //if these were defined as constants thay can not be changed one a class is instantiated
    var nameOfSquare: String
    var topLeftPoint: (Double, Double)
    var lengthOfSide: Double
    var area: Double
    var doubleTheArea: Double {
        return (lengthOfSide * lengthOfSide) * 2
    }
    
    var doubleNameOfSquare: String {
        get {
            return nameOfSquare.appending(nameOfSquare)
        }
        set {
            nameOfSquare = newValue
        }
    }
    
    init(topLeftPoint: (Double,Double), lengthOfSide: Double, nameOfSquare: String) {
        self.topLeftPoint = topLeftPoint
        self.lengthOfSide = lengthOfSide
        self.nameOfSquare = nameOfSquare
        self.area = lengthOfSide * lengthOfSide
        
    }
}

let mySquare = Square(topLeftPoint: (5.5,6.312), lengthOfSide: 12.3124, nameOfSquare: "Doug")
let myOtherSquare: Square = Square (topLeftPoint: (0.1, 0.2), lengthOfSide: 10, nameOfSquare: "bob")


mySquare.lengthOfSide = 12.3333 //"repeating of course"
myOtherSquare.topLeftPoint.0 = 0.233
print(mySquare.area)

mySquare.area
mySquare.doubleTheArea

var myThirdSquare = Square(topLeftPoint: (1.0, 10), lengthOfSide: 2.0, nameOfSquare: "three")
myThirdSquare = Square(topLeftPoint: (0,0), lengthOfSide: 0.2, nameOfSquare: "threeeeees")
let myFourthSquare = Square(topLeftPoint: (0.9,0.8), lengthOfSide: 0.8, nameOfSquare: "Guts")

//error here because myFourthSquare is a constant instance of the Square class
//myFourthSquare = myThirdSquare

print (mySquare.nameOfSquare)
print (mySquare.doubleNameOfSquare)

mySquare.nameOfSquare = "bob"
print(mySquare.nameOfSquare)
print(mySquare.doubleNameOfSquare)



