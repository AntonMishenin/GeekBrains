import Foundation

struct SportCar {
    let brand: String
    let year: Int
    let volume: Int
    var isEngineOn: Bool  = false
    var isWindowOpen: Bool = false
    var load: Int = 0
    var speed: Int = 0
    
    mutating func action(action: ActionSportCar) {
        switch action {
        case .engineOn:
            self.isEngineOn = true
        case .engineOff:
            self.isEngineOn = false
        case .windowOpen:
            self.isWindowOpen = true
        case .windowClose:
            self.isWindowOpen = false
        case .addCargo(value: let value):
            self.load += value
        case .changeSpeed(value: let value):
            self.speed += value
        }
    }
}

struct TrunkCar {
    let brand: String
    let year: Int
    let volume: Int
    var isEngineOn: Bool = false
    var isWindowOpen: Bool = false
    var load: Int = 0
    var carrying: Int = 0
    
    mutating func action(action: ActionTrunkCar) {
        switch action {
        case .engineOn:
            self.isEngineOn = true
        case .engineOff:
            self.isEngineOn = false
        case .windowOpen:
            self.isWindowOpen = true
        case .windowClose:
            self.isWindowOpen = false
        case .addCargo(value: let value):
            self.load += value
        case .changeCarrying(value: let value):
            self.carrying += value
        }
    }
}

enum ActionSportCar {
    case engineOn
    case engineOff
    case windowOpen
    case windowClose
    case addCargo(value: Int)
    case changeSpeed(value: Int)
}

enum ActionTrunkCar {
    case engineOn
    case engineOff
    case windowOpen
    case windowClose
    case addCargo(value: Int)
    case changeCarrying(value: Int)
}

var hondaSportCar = SportCar(brand: "honda", year: 2000, volume: 200)
hondaSportCar.action(action: .engineOn)
hondaSportCar.action(action: .windowOpen)

print(hondaSportCar)
