import Foundation


/*1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
 
 2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
 
 3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
 
 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
 
 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
 
 6. Вывести значения свойств экземпляров в консоль.*/

enum Action {
    case engineOn
    case engineOff
    case windowOpen
    case windowClose
    case addCargo(value: Int)
    case addHorsePower(value: Int)
}

class Car {
    
    var brand: String
    var model: String
    var year: Int
    var isEngineOn = false
    var isWindowOpen = false
    
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }
    
    func handleAction(action: Action) {}
    
    func toString() {}
}

class SportCar: Car {
    
    var hp: Int
    
    init(brand: String, model: String, year: Int, hp: Int) {
        self.hp = hp
        super.init(brand: brand, model: model, year: year)
    }
    override func handleAction(action: Action) {
        switch action {
        case .engineOn:
            self.isEngineOn = true
        case .engineOff:
            self.isEngineOn = false
        case .windowOpen:
            self.isWindowOpen = true
        case .windowClose:
            self.isWindowOpen = false
        case .addHorsePower(value: let value):
            self.hp += value
        default:
            break
        }
    }
    
    override func toString() {
        print(brand, model, year, hp)
    }
}

class TrunkCar: Car {
    
    var load: Int
    
    init(brand: String, model: String, year: Int, load: Int) {
        self.load = load
        super.init(brand: brand, model: model, year: year)
    }
    
    override func handleAction(action: Action) {
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
        default:
            break
        }
    }
    
    override func toString() {
        print(brand, model, year, load)
    }
}

var hondaSport = SportCar(brand: "Honda", model: "Accord", year: 2000, hp: 400)
hondaSport.toString()
hondaSport.handleAction(action: .addHorsePower(value: 50))
hondaSport.toString()
