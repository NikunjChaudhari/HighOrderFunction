import Cocoa

let arr = [1,2,3,4,5]
let numberArray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
var arrFlat = [[1,3,6,8],[5,8,0,2],[4,7]]
var arr2 = [Int]()
let strArray = ["One","Two","Three"]

// map
let m4 = arr.map{ $0 * 2 }
print("m4",m4)
    
// filter
let f1 = numberArray.filter { $0 % 2 == 0 }
print("f1",f1)


var num = 0


//  reduce
let r1 = numberArray.reduce(0, {$0 + $1})
let r2 = numberArray.reduce(0, + )
print("r2",r2)
print("sum",r1)

let str = strArray.reduce("", {$0 + $1})
let str1 = strArray.reduce("", + )
print("str1",str1)
print(str)

//flatmap


let f2 = arrFlat.flatMap{$0}
print("f2",f2)
var chain = arrFlat.flatMap{$0}.filter{$0 % 2 == 0}.map{$0 * $0}
print("chain",chain)


/*
 sort(by:) will sort all elements according to the condition written inside the body of the closure.

 sorted(by:) will sort all elements according to the condition written inside the body of the closure and returns a new array.
 */

var coins = [1, 5, 2, 10, 6, 2, 7, 4, 10, 15]

let sortCoins = coins.sorted { (a, b) -> Bool in
    a > b
}

coins.sort { (a, b) -> Bool in
    a > b
}

print(sortCoins)
print(coins)
