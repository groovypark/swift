import UIKit

var name = ["Park", "Choi", "Kim", "Lee"]
var age = [3,4,5,6]
var height = [40,50,60,70]

print(name[0],age[0],height[0])

// struct(구조체)
struct Student {
    var name:String
    var age:Int
    var height:Int
    // func 가능. 상속 불가능
}

var student1 = Student(name: "Park", age: 3, height: 40)
var student2 = Student(name: "Choi", age: 4, height: 50)

// struct Student2: Student {} // 상속이 불가능해서 에러남.
