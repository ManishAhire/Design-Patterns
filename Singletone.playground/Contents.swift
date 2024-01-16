import UIKit

/*
    Singletone : It ensure a class only has one instance, and provide a global point of access.
*/

struct UserInfo {
    
    let firstName: String = "Manish"
    let lastName: String = "Ahire"
}

final class User {
    
    static let shared : User = User()
    
    private init() { }
    
    func getUserInfo() -> UserInfo {
        return UserInfo()
    }
}

let userInfo = User.shared.getUserInfo()

print("The User Info is \(userInfo)")
