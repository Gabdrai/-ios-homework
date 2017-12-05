/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class Human: CustomStringConvertible, Equatable, Comparable {
    static func ==(lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    static func <(lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    var description: String {
        return "Human (name: \(name), age: \(age))"
    }
    
}
let Human1 = Human(name: "Gab", age: 22)
let Human2 = Human(name: "Drai", age: 23)
print(Human1)
print(Human2)


/*:
 Make the `Human` class adopt the `CustomStringConvertible`. Print both of your previously initialized `Human` objects.
 */


/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
 */
if Human1 == Human2
{
    print("Same")
}
else
{
    print("not the same")
}

/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */




let Human3 = Human(name: "Gabri", age: 24)
let Human4 = Human(name: "Gabriel", age: 25)
let Human5 = Human(name: "GB", age: 26)

let Humans = [Human1, Human2, Human3, Human4, Human5]
var sortedHumans = Humans.sorted(by:>)


print(Humans)
print(sortedHumans)


//: page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)

