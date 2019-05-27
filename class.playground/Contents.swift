import UIKit

class Vehicle{
    var currentSpeed = 0.0  // stored property는 초기화 안하면 컴파일 에러
    var description:String {    // computed property
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("noiseless")
    }
}

let someVehicle = Vehicle();
someVehicle.currentSpeed = 1.0
print("Vehicle : \(someVehicle.description)")

// 상속
class Bicycle:Vehicle{
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true

bicycle.currentSpeed = 15.0
print("Bicycle : \(bicycle.description)")

class Tandem:Bicycle{
    var currentNumberOfPassengers = 0
    override var description:String {    // computed property
        return "traveling at \(currentSpeed) miles per hour, number of passenger : \(currentNumberOfPassengers), basket : \(hasBasket)"
    }
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0

print("Tandem : \(tandem.description)")

class Train:Vehicle{
    override func makeNoise() {
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoise()

class Car:Vehicle{
    var gear = 1
    override var description:String {    // computed property
        return super.description + " in gear \(gear)"   // 상위 클래스 super 이용
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car : \(car.description)")

class AutomaticCar:Car{
    override var currentSpeed: Double{
        didSet{     // observer
            gear = Int(currentSpeed / 10)
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 30.0
print("AutomaticCar : \(automatic.description)")
