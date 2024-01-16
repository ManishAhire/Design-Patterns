import UIKit

/*
    Dependency Injection: An Object receives other object it depends
*/

class Animal {
    
    func printAnimal(name: String) {
        print("The animal name is \(name).")
    }
}

class Cat {
    
    let objAnimal = Animal() // This is dependency, we can resolve this using Property Injection or Constructor Injection
    
    func printCat(name: String) {
        
        objAnimal.printAnimal(name: name)
    }
}

let objCat = Cat()
objCat.printCat(name: "Dolly")
