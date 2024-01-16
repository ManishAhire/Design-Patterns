import UIKit

class Animal {
    
    func printAnimal(name: String) {
        print("The animal name is \(name).")
    }
}

class Cat {
    
    var objAnimal: Animal? // This is Property Injection
    
    func printCat(name: String) {
        
        objAnimal?.printAnimal(name: name)
    }
}

let objCat = Cat()
objCat.objAnimal = Animal() // Injected Property Animal
objCat.printCat(name: "Dolly")
