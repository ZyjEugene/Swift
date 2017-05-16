//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//函数和闭包


func greet(person:String, day:String) ->String{
    return "hello \(person),today is \(day)"
}
greet(person: "Eugene", day:"Tuesday")

//“默认情况下，函数使用它们的参数名称作为它们参数的标签，在参数名称前可以自定义参数标签，或者使用 _ 表示不使用参数标签。”
func greeting(_ person: String, on day: String) ->String{
    return "hello \(person),today is \(day)"
}
greeting("zyj", on: "Monday")

//“使用元组来让一个函数返回多个值。该元组的元素可以用名称或数字来表示”
func calculateStatistics(scores: [Int]) -> (min: Int,max: Int,sum: Int) {
    
    var min = scores[0];
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        
        sum += score
    }
    
    return (min,max,sum);
}
let statistics = calculateStatistics(scores: [5,3,100,3,9])
print(statistics.sum)
print(statistics.1)
print(statistics.0)

//“函数可以带有可变个数的参数，这些参数在函数内表现为数组的形式：”
func sumOf(numbers: Int...) -> Int {
    
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(numbers: 43,597,12)

//“练习： 写一个计算参数平均值的函数。”
func meanOf(_ numbers: Int...) -> Int {
    
    var mean = 0
    var sum = 0
    for number in numbers {
         sum += number
    }
    
    mean = sum / numbers.count
    
    return mean;
}
meanOf(43,597,12)

//函数嵌套、作为返回值、作为参数
//“函数来重构一个太长或者太复杂的函数。”
func retumFifteen() -> Int {
    
    var y = 10
    func add() {
        y += 5
    }
    
    return y
}
retumFifteen()

//“函数是第一等类型，这意味着函数可以作为另一个函数的返回值。”
func makeIncrementer() -> ((Int) -> Int) {
    
    func addOne(number: Int) -> Int {
        return 1+number;
    }
    return addOne
}

var incrementer = makeIncrementer()
incrementer(7)

//“函数也可以当做参数传入另一个函数。”
func hasAnyMatches(list: [Int], condition:(Int) -> Bool) ->Bool {
    
    for item in list {
        if condition(item) {
            return true
        }
    }
    
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20,19,7,12]
hasAnyMatches(list: numbers, condition: lessThanTen)

//let mappedNumbers = numbers.map({ number in 3 * number })
//print(mappedNumbers)

let sortedNumbers = numbers.sort { $0 > $1 }
print(sortedNumbers)


		