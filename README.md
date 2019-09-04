# ClosuresInSwift
Closures in Swift

- Closures are self-contained blocks of functionality that can be passed around and used in your code.

# ViewController.swift

``` swift
//
//  ViewController.swift
//  ClosuresInSwitf
//
//  Created by Carlos Santiago Cruz on 11/21/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sumNumbers: ((Int, Int) -> Int) = { firstNumber, secondNumber -> Int in
            return firstNumber + secondNumber
        }
        let sum = sumNumbers(10,4)
        print("function using a closure sum = \(sum)")
    
    }
}
```

# Console

``` console
function using a closure sum = 14
```
