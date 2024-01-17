import UIKit

/*
    Observer Patter: In which an object, called the subject, maintains a list of its dependents, called observers, and notifies them automatically of any state changes, usually by calling one of their methods. 
 */

struct TrafficColors {
    static let red = "RED"
    static let green = "GREEN"
    static let yellow = "YELLOW"
}

protocol Observer {
    func onTrafficChange(_ color: String)
}
class VehicleObserver : Observer {

    func onTrafficChange(_ color: String) {
        
        switch color {
        case TrafficColors.red:
            print("Stop Vehicle")
            
        case TrafficColors.green:
            print("Start Vehicle")
            
        case TrafficColors.yellow:
            print("Slow down Vehicle")
    
        default:
            print("Do nothing")
        }
    }
}

class VendorObserver : Observer {

    func onTrafficChange(_ color: String) {
        
        switch color {
        case TrafficColors.red:
            print("Start selling")
            
        case TrafficColors.green:
            print("Stop selling")
            
    
        default:
            print("Do nothing")
        }
    }
}

class TrafficLightSubject {
    
    private var color : String = String()
    
    var lightColor: String {
        
        get {
            return color
        }
        
        set {
            color = newValue
            notifyObserver()
        }
    }
    
    var trafficeObserver = [Observer]()
    
    func addObserver(_ observer : Observer) {
        
        trafficeObserver.append(observer)
    }
    
    func notifyObserver() {
        
        trafficeObserver.forEach { observer in
            
            observer.onTrafficChange(color)
        }
    }
    
    deinit {
        trafficeObserver.removeAll()
    }
}

let objTrafficLightSubject = TrafficLightSubject()
let objVehicleObserver = VehicleObserver()
let objVendorObserver = VendorObserver()

objTrafficLightSubject.addObserver(objVehicleObserver)
objTrafficLightSubject.addObserver(objVendorObserver)

objTrafficLightSubject.lightColor = TrafficColors.red


