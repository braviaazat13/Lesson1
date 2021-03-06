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
var thirdStep: Double


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










// TACK 2

let shortSide1: Double = 40.45
let shortSide2: Double = 15.3434

let longSide: Double
let perimeter: Double
let square: Double


// Looking for long side

firstStep = pow(shortSide1, 2)
secondStep = pow(shortSide2, 2)
longSide = sqrt(firstStep + secondStep)
print("Гипотенуза треугольника равна: " + String(round(longSide)))


// Looking for perimeter

perimeter = shortSide1 + shortSide2 + longSide
print("Периметр треугольника равен: " + String(round(perimeter)))


//Looking for quare

let halfPerimeter: Double = perimeter / 2
firstStep = halfPerimeter - shortSide1
secondStep = halfPerimeter - shortSide2
thirdStep = halfPerimeter - longSide
square = sqrt(halfPerimeter * firstStep * secondStep * thirdStep)
print("Площадь треугольника равна: " + String(round(square)))











// TACK 3

let summ: Double = 100000   //сумма вложения
let percent: Double = 9     //годовой процент
var years: Double = 5       //количество лет

var result: Double = 0


repeat {
    if result == 0 {
        result = ((summ/100) * percent)
    } else {
        result = result + ((summ/100) * percent)
    }
    years = years-1
} while years > 0

print("Сумма вклада через 5 лeт составит: " + String(summ + result))
