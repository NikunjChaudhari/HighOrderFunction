//
//  ViewController.swift
//  HighOrderFunctionDemo
//
//  Created by macos on 30/07/20.
//  Copyright © 2020 macos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        chaining()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Use Map
func map()
{
    let arr = [1,2,3,4,5]
    var arr2 = [Int]()
    for number in arr
    {
        arr2.append(number*2)
    }
    print("array",arr2)

    // method 1
    let m1 = arr.map { (value:Int) -> Int in
        return value*2
    }
    print("m1",m1)
    
    // method 2
    let m2 = arr.map { (value:Int) in
        return value*2
    }
    print("m2",m2)
    
    // method 3
    let m3 = arr.map { (value) in
        return value * 2
    }
    print("m3",m3)
    
    // method 4
    let m4 = arr.map{ $0 * 2 }
    print("m4",m4)
    }
    
    //MARK: - Use Filter

    func filter()
    {
        let numberArray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
        var arr = [Any]()
        for number in numberArray
        {
            if number % 2 == 0
            {
                arr.append(number)
            }
        }
        print("arr",arr)
        
        // using filter
        let f1 = numberArray.filter { $0 % 2 == 0 }
        print("f1",f1)
        
    }
    
    func reduce()
    {
        
        let numberArray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
        let strArray = ["One","Two","Three"]
        var num = 0
        for number in numberArray
        {
           num += number
        }
        print("num",num)
        
        // using reduce
        let r1 = numberArray.reduce(0, {$0 + $1})
        let r2 = numberArray.reduce(0, + )
        print("r2",r2)
        print("sum",r1)
        
        let str = strArray.reduce("", {$0 + $1})
        let str1 = strArray.reduce("", + )
        print("str1",str1)
        print(str)
    }
    
    func sort()
    {
        
        let arr = [1,2,3,4,5,6,7,8,9]
        let sortedArr = arr.sorted{$0 > $1}
        print(sortedArr)
    }
    
    func flatmap()
    {
        var arrFlat = [[1,3,6,8],[5,8,0,2],[4,7]]
        var mapArr = [Any]()
        for arr in arrFlat
        {
            mapArr += arr
        }
        print("mapArr",mapArr)
// flatmap
        let f1 = arrFlat.flatMap{$0}
        print("f1",f1)
    }
    
    func chaining()
    {
        var arr = [[1,3,6,8],[5,11,0,2],[4,7]]
        var chain = arr.flatMap{$0}.filter{$0 % 2 == 0}.map{$0 * $0}
        print("chain",chain)
    }

    
    
}


