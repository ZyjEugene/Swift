//: Playground - noun: a place where people can play


import UIKit

var str = "Hello, playground"

//控制流学习
//“使用if和switch来进行条件操作，使用for-in、for、while和repeat-while来进行循环。包裹条件和循环变量括号可以省略，但是语句体的大括号是必须的。”


//可选值： 和 ？？(此操作符提供一个默认值)
//作用：“用于处理使用if和let时值缺失的情况”
//含义：“一个可选的值是一个具体的值或者是nil以表示值缺失。在类型后面加一个问号(?)来标记这个变量的值是可选的。”
//1
var optionString: String? = "hello"
print(optionString == nil)
//2
var optionName: String? = nil //"Eugene"
var greeting = "hello!"
if let name = optionName {
    greeting = "hello,\(name)"
} else {
    greeting = "bye!"
}

//3
let nickName: String? = nil
let fullName: String = "Zyj Eugene"
let informalGeeting = "Hi! \(nickName ?? fullName)"


//switch:
//作用：“支持任意类型的数据以及各种比较操作”
let friut = "red apple";
switch friut {
case "origin":
    print("Make orange juice.")
    
case "plum","pear","banana":
    print("That would make a good fruit salad.")
    
case let x where x.hasSuffix("apple"):
    print("Is it a fresh \(x)")
    
default:
    print("Everything tastes good in soup.")
}


//“使用for-in来遍历字典，需要两个变量来表示每个键值对。字典是一个无序的集合，所以他们的键和值以任意顺序迭代结束。”
let interestingNumbers = [
"Prime":[2,3,5,6,11,13],
"Fibonacci":[1,1,2,3,5,8],
"Square":[1,4,9,16,26],
]
var largest = 0
var largestKind: String? = nil
for (kind,numbers) in interestingNumbers {
    //print(numbers)
    for number in numbers {
        //print(number)
        if number > largest {
            largest = number
            largestKind = kind
        }
        
    }
    
}
print(largest)
print(largestKind);

//“使用while来重复运行一段代码直到不满足条件。循环条件也可以在结尾，保证能至少循环一次。”
var n = 2
while n < 100 {
    n = n*2
}
print(n)

var m = 2
repeat {
    m = m*2
} while m < 100
print(m)

//“在循环中使用..<来表示范围。使用..<创建的范围不包含上界，如果想包含的话需要使用...。”

var total = 0
for i in 0..<4 {
    total += i
}
print(total)




