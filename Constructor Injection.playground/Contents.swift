import UIKit


class Animal {
    
    func printAnimal(name: String) {
        print("The animal name is \(name).")
    }
}

class Cat {
    
    let objAnimal: Animal?
    
    // Constructor Injection
    init(objAnimal: Animal?) {
        self.objAnimal = objAnimal
    }
    
    func printCat(name: String) {
        self.objAnimal?.printAnimal(name: name)
    }
}

let objCat = Cat(objAnimal: Animal())
objCat.printCat(name: "Dolly")
