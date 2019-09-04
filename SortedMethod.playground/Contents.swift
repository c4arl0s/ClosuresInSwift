import UIKit

let names = ["Norma", "Carlos", "Trinidad"]
func backward(_ stringOne: String, _ stringTwo: String) -> Bool {
    return stringOne > stringTwo
}
var reverseNames = names.sorted(by: backward)
print(reverseNames)

var anotherReverseName = names.sorted(by: {(stringOne: String, stringTwo: String) -> Bool in
    return stringOne > stringTwo
})

print(anotherReverseName)

