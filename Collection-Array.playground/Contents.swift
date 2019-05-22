import UIKit

//var comment = [String]()
var commnet:Array<String> = []
var commnet2:[String] = []

commnet2.append("Anna")
commnet2.append("Alex")

print(commnet2)

var comment3 = ["Anna", "Alex", "Brian", "Jack"]
comment3 += ["Choi"]
comment3 += ["Jin"]
comment3 += ["Kim"]

print(comment3[1])

comment3[1] = "Soovin"

print(comment3[1])

//immutable Array
let commnet4 = ["Anna", "Alex", "Brian", "Jack"]

//commnet4 += ["Soovin"]  // immutable 이기 때문에 에러남. 값은 바꿀 수 없음.
print(commnet4)
