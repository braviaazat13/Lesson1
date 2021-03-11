import UIKit

// БАЗОВЫЕ ОПЕРАТОРЫ

var a = 5 //  присваивание
var c = 10 % 7  // остаток от деления
a += 5 // Составное присваивание можно использовать умножениеи деление и минус, остаток от деления. a будет на 5 больше
a *= 10



var startCounts = 0
// !=  <= >=

if startCounts > 0 {  //здесь описываются знаки больше меньше либо равно
    print("привет")
} else {
    print("Пока - пока")
}


// Задача: если до этого не запускалось - показать инструкцию
var startCount = 1
var isLoggetIn = false

if startCount == 0 {
    print("ИНСТРУКЦИЯ")
} else if isLoggetIn {
    print("Личный кабинет")
} else {
    print("Покажем авторизацию")
}




//if else можно записать более упрощенно в одну строку
startCount > 0 ? print(1) : print(2)  // как на примере слева

// && - это оператор выступает в качестве "и". В логических условиях когда мы хотим что бы оба действия выполнялись.
// || - оператор "или"
// ! - оператор отрицания




//берем какое либо значение и проверяем его на определенный паттерн. В отличии от значения "а" прийдет то или иное действие.
switch a {
case 1:
    print(1)
case 2:
    print(2)
case 3:
    print(3)
default:
    print(4)
}


// Циклические операторы

var aa = 1
var bb = 1

for _ in 0...10 {   // вмесо нижнего подчеркивания мы можем написать "index" и это будет порядковым номером цикла по которому сейчас проходимся. Первый проход, второй, третий и так далее.
    print(aa)
    aa += 1
}


//мы это можем испошльзовать чтобы извлекать информацию из массивов: пример ниже
var names = ["Amir", "Oleg", "Kir","Masha"]

for name in names {
    print(name + "_GB")
}


for index in 0...10 {
    print(bb, index)
    bb += 1
}



var a1 = true
var b1 = 0

while a1 == true {
    print(a1, b1)
    b1 += 1
    if b1 > 49 { a1 = false}
}

// ФУНКЦИИ

func makeRound(name: String) {
    print("Сделаем аватарку круглой для" , name)
}


let friends = ["Amir", "Oleg", "Kir","Masha"]

for friend in friends {
    makeRound(name: friend)
}


func makeUserName(name: String) -> String {
    return name + "_GB"                      //она возвращает переменную. В данном примере она возвращает переменную типа String.
}

for friend in friends {
    print(makeUserName(name: friend))
}



// еще пример: используется функция выше


let friends1 = ["Amir", "Oleg", "Kir","Masha","Amir", "Oleg", "Kir","Masha","Amir", "Oleg", "Kir","Masha","Amir", "Oleg", "Kir","Masha",]

var newFriends = [String]()

for friend in friends1 {
    let username = makeUserName(name: friend)
    newFriends.append(username)   //append - добавляет новый эллемент в конец массива.
}

print(newFriends)




// Guard - быстрый выход из функции. В случае если хотть одно условие не выполняется, мы сразу выходим из функции. Заменяет кучу кучу "if"

let name1: String? = "Azat"
let age = 24
let isSingle = false

func isEntreceAvalible() -> Bool {
    
    guard name1 != "Vladimir" else {return false}
    guard age > 18 else {return false}
    guard !isSingle else {return false}
    
    print("Добро пожаловать \(name1)")
    
    return true
}

isEntreceAvalible()











// ДЗ.
//1)Вспоминает про тернарный оператор.
//Массив целых чисел можно при помощи цикла. нужно проверять что мы мы не выходили за его пределы.

var array  = [1,2,3,4,5,6,7,8,9]
var index = 0

for  value in array {
    print(value)
    if value % 2 == 0 {
        array.remove(at: index)
        index -= 1
    }
    index += 1
}

print(array)
