//
//  main.swift
//  L1_AzatKhabirov
//
//  Created by Азат Хабиров on 06.03.2021.
//

import Foundation


//TACK 1

let numberA: Double = 2
let nubmerB: Double = 5
let numberC: Double = -7

var firstStep: Double
var secondStep: Double


//Discriminant search

let discriminant: Double
firstStep = pow(nubmerB, 2)
secondStep = 4 * numberA * numberC
discriminant = firstStep - secondStep


// Solution

var answer: Double
let firstValue: Double
let secondValue: Double


if discriminant < 0 {
    print("Корней нет")
}

else if discriminant == 0 {
    answer = (-(nubmerB)) / 2 * numberA
    print("Корень уравнения равен: " + String(answer))
}

else {
    firstStep = (-(nubmerB) - (sqrt(discriminant)))
    secondStep = 2 * numberA
    firstValue = firstStep / secondStep
    print("Корень X1: " + String(firstValue))
    
    firstStep = (-(nubmerB) + (sqrt(discriminant)))
    secondStep = 2 * numberA
    secondValue = firstStep / secondStep
    print("Корень X2: " + String(secondValue))}




