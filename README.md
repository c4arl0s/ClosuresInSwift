# ClosuresInSwift
Closures in Swift

- Closures are self-contained blocks of functionality that can be passed around and used in your code.

# Signature

```swift
(parameters) -> ReturnType
```

# Closure Expression Syntax

- Put the block or closure instead of the parameter

``` swift
{ (parameters) -> returnType in
    statements
}
```

# Comparison with a Function

```swift
func sum(numbers: [Int]) -> Int {
    var total: Int = 0
    for number in numbers {
        total = total + number
    }
    return total
}
```

```swift
let firstSum = sum(numbers: [1,2,3])
print(firstSum)
```

```console
6
```

# Write a closure thats does the same thing

```swift
let sumClosure = { (numbers: [Int]) -> Int in
    var total: Int = 0
    for number in numbers {
        total = total + number
    }
    return total
}
let secondSum = sumClosure([4,5,6])
print(secondSum)
```

```console
15
```

# Passing a Closure as argument of a function

```swift
let thirdSum = sum(numbers: [sumClosure([1,2,3]),sumClosure([4,5,6])])
```

```console
21
```


# Sorted Method

```swift
let questions: [String] = ["what is 7+7", "what is the capital of Vermont", "what is the cognan made from"]
questions.sorted(by: (String, String) throws -> Bool)
```


``` swift
var anotherReverseName = names.sorted(by: {(stringOne: String, stringTwo: String) -> Bool in
    return stringOne > stringTwo
})

print(anotherReverseName)
```

``` console
["Trinidad", "Norma", "Carlos"]
```

# Trailing Closure

``` swift
func someFunctionThatTakesAClosure(closure: () -> Void) {
    // function body goes here
}
```



```swift
// Here's how you call this function without using a trailing closure:
someFunctionThatTakesAClosure(closure: { /* closure's body goes here */ })

// Here's how you call this function with a trailing closure instead:
someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}
```

# The sorted Method

``` swift
let names = ["Norma", "Carlos", "Trinidad"]
func backward(_ stringOne: String, _ stringTwo: String) -> Bool {
    return stringOne > stringTwo
}
var reverseNames = names.sorted(by: backward)
print(reverseNames)
```

# Console
``` console
["Trinidad", "Norma", "Carlos"]
```

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
