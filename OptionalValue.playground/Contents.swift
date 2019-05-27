import UIKit

class Optional{
    var optionalString:String? = "Hello"    //? : optional value, optional type
    // var optionalString:String = "" 일 경우 nil은 못들어감.
    
    func hello() {
        print(optionalString!) // optional type unrapping 해줘야 함. "Hello" -> Hello
    }
}

var option = Optional()
option.hello()
