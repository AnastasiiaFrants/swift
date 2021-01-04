import UIKit
//Задание 1
var Arr = [11, 12, 24, 28, 64, 65, 69, 76, 79, 81]
for sort in Arr {
    if sort % 2 == 0 {
        print("\(sort) - Чётное число")
    }
    else{
        print("\(sort) - Нечётное число")
    }
}
//Задание 2
for sort2 in Arr{
    if sort2 % 3 == 0 {
        print("\(sort2) - Число делится на 3 без остатка")
    }
    else{
        print("\(sort2) - Число  не делится на 3 без остатка")
    }
}

//Задание 3
var TestArray: [Int] = []
for i in 1...100 {
    TestArray.append(i)
}
print(TestArray)


//Задание 4
for value in TestArray{
    if (value % 2) == 0 || (value % 3) != 0 {
        TestArray.remove(at: TestArray.firstIndex(of: value)!)
    }
}
print(TestArray)

//Задание 5
func fib(_ n: Int) -> [Double] {
    var fibNumb: [Double] = [1, 1]
    (2...n).forEach{ i in
    fibNumb.append(fibNumb [i - 1] + fibNumb [i - 2])
    
    }
    return fibNumb
}
print(fib(100))



    

