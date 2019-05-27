import UIKit

func sayHello(){
    print("Hello")
}

sayHello()

func sayHello2(name:String) {
    print("Hello \(name)")
}

sayHello2(name: "Choi")

func sayHello3(name:String) -> String{
    return "Hello " + name
}

print(sayHello3(name: "Choi"))

func sayHello4(name:String = "Park"){   //default value
    print("Hello \(name)")
}

sayHello4()
sayHello4(name: "Jin")

func sayHello5(insertYourName name:String, internationalAge age:Int) {
    print("Hello \(name) is \(age) years old.")
}

sayHello5(insertYourName: "Choi", internationalAge: 10)

func sayHello6(_ name:String, _ age:Int) -> String{     // _ : Label, Name 생략
    return "\(name) is \(age) years old."
}

print(sayHello6("Jin", 5))
