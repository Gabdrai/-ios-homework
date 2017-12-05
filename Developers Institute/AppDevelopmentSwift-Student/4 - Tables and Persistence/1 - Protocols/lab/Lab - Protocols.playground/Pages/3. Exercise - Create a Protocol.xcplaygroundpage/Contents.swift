/*:
 ## Exercise - Create a Protocol
 
 Create a protocol called `Vehicle` with two requirements: a nonsettable `numberOfWheels` property of type `Int`, and a function called `drive()`.
 */
    protocol Vehicle {
        var numberOfWheels: Int { get }
    
    func drive()
    
    }

struct Car: Vehicle {
    func drive() {
        print("vroom vroom")
    }
    
    var numberOfWheels: Int{
        return 4
    }
    
}

let peugeot = Car()
print(peugeot.numberOfWheels)
peugeot.drive()

struct Bike: Vehicle {
    func drive() {
        print("Begin Pedaling !")
    }
    
    var numberOfWheels: Int {
        return 2
    }
    
}

let bike = Bike()
print(bike.numberOfWheels)
bike.drive()

/*:
 Define a `Car` struct that implements the `Vehicle` protocol. `numberOfWheels` should return a value of 4, and `drive()` should print "Vroom, vroom!" Create an instance of `Car`, print its number of wheels, then call `drive()`.
 */


/*:
 Define a `Bike` struct that implements the `Vehicle` protocol. `numberOfWheels` should return a value of 2, and `drive()` should print "Begin pedaling!". Create an instance of `Bike`, print its number of wheels, then call `drive()`.
 */


//: [Previous](@previous)  |  page 3 of 5  |  [Next: App Exercise - Similar Workouts](@next)
