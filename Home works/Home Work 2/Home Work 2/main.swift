//
//  main.swift
//  Home Work 3
//
//  Created by Азат Хабиров on 11.03.2021.
//

import Foundation



//Написать функцию, которая определяет, четное число или нет

func findeNumber(number: Int) -> Bool {
    if number % 2 == 0 {
        print("Это число делится без остатка на 2")
        return true
    }
    else {
        print("Это число не делится без остататка на 2")
        return false
    }
}

print(findeNumber(number: 31))


// Написать функцию, которая делится без остатка на 3

func findNumberThree (number: Int) -> Bool {
    if number % 3 == 0 {
        print("Эта функция делиться без остатка на 3")
        return true
    } else {
        print("Эта функция не делиться без остатка на 3")
        return false
    }
}

findNumberThree(number: 9)



//Создать возрастающий массив из трех чисел

var array = Array(0...100)
var index = 0
print(array)

//удалить все четные числа и числа, которые не делятся на 3

while index < array.count {
    if array[index] % 2 == 0 || array[index] % 3 != 0 {
        array.remove(at: index)
        index -= 1
    }
    index += 1
}

print(array)


// Написать функцию, кторая добавляет в массив новое число Фибоначчи. Добавить 50 эллементов.



func fibonacci (n: Int) -> [Int] {

    assert(n > 1)
    
    var array = [1, 0]
    
    while array.count < n {
        array.append(array[array.count - 1] + array[array.count - 2])
    }
    return array
    
}

print(fibonacci(n: 50))



