struct Tire {
    var diameter = 0.0, thickness = 0.0
}

struct Car {
    var name = ""
    
    var length = 0.0
    
    var originalTire = Tire()
    
    var tire : Tire {
        get {
            let diameter = length / 10.0
            let thickness = length / 20.0
            return Tire(diameter: diameter, thickness: thickness)
        }
        set(newTire) {
            originalTire.diameter = newTire.diameter
            originalTire.thickness = newTire.thickness
        }
    }
    // read only property
    var identity : String {
        return "\(self.length)123123123"
    }
}

var myCar = Car(name: "BMW", length: 100.0)
let initialTire = myCar.tire
print(initialTire)

myCar.tire = Tire(diameter: 15.0, thickness: 7.5)
print(myCar.originalTire)

print(myCar.identity)

struct Employee {
    var salary: Int = 0 {
        willSet(newValue) {
            print("salary set with \(newValue)")
        }
        didSet {
            if(self.salary < oldValue) {
                print("salary has been increased to \(self.salary)")
            }
        }
    }
}

var employee = Employee()
employee.salary = 3000
employee.salary = 5000

@propertyWrapper
struct TenOrLess {
    private var value : Int
    init() {
        self.value = 0
    }
    var wrappedValue : Int {
        get {
            return value
        }
        set {
            self.value = min(newValue, 10)
        }
    }
}

struct Egg {
    @TenOrLess var numberOfEgg: Int
}

var egg = Egg()
print("init egg number: \(egg.numberOfEgg)")

egg.numberOfEgg = 5
print("first egg number: \(egg.numberOfEgg)")

egg.numberOfEgg = 15
print("second egg number: \(egg.numberOfEgg)")
