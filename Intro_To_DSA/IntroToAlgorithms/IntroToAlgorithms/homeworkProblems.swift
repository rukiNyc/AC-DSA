//
//  homeworkProblems.swift
//  IntroToAlgorithms
//
//  Created by C4Q  on 10/14/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//Given an array of Ints, return a tuple where:
//The first element is the number of negative values
//The second element is the number of zeros 
//The third element is the number of positive values.


func posZeroNeg(myArr: [Int]) -> (Int, Int, Int) {
    //return (0,0,0)
    
    var negVal = 0
    var posVal = 0
    var zeroval = 0
    
    for i in myArr{
        
        switch i {
            
        case let x where x < 0: negVal += 1
        case let y where y == 0 : zeroval += 1
        case let z where z > 0 : posVal += 1
            
        default: break
        }
    }
    
    return (negVal,zeroval,posVal)
}


//Given an array of Ints, return the second smallest integer.  Assume every value is unique.  Return nil if the array has less than two elements

func secondSmallest(myArr: [Int]) -> Int? {
    
    var smallest = myArr[0]
    var secSmallest = myArr[1]
    var count = 0
    
    if myArr.count < 2{
        return nil
    }
    
    for i in myArr{
        
        if i < smallest{
            smallest = myArr[count]
            print(smallest)
        }
        
        if i > smallest{
            secSmallest = i
        }
        count += 1
    }
    return secSmallest
    
}

//A number is prime if it is only evenly divisible by 1 and itself.  Write an algorithm that checks if an Int is prime

func isPrime(x: Int) -> Bool {
    
    while x >= 2 && x % 2 != 0 {
        
        let range = Int(sqrt(Double(x))) + 1
        
        for i in 2...range {
            
            if x % i == 0{
                
                return false
            }
            
        }
        return true
    }
    return false
}

//Write an anglorithm that removes all characters from a String matching an input character

func removeCharacter(s: String, c: Character) -> String {
    
    var newString = ""
    
    for i in s.characters{
        if i != c {
            newString.append(i)
        }
    }
    return newString
}

//Write an algorithm that removes all characters from a String contained within an input array of characters

func removeMultipleCharacters(s: String, arr: [Character]) -> String {
    var newString = ""
    
    for i in s.characters{
        
        if !(arr.contains(i)){
            newString.append(i)
            
        }else{
            continue
            
        }
    }
    return newString
}

