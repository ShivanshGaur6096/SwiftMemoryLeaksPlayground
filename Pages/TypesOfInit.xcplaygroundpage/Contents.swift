import UIKit



class Person {
    var name: String
    
//    init(name: String) {
//        self.name = name
//    }
    
    required init(name: String) {
        self.name = name
    }
    
//    convenience init() {
//        self.init(name: "unknown")
//    }
}

class Pet {
    weak var owner: Person?
    
    init(owner: Person? = nil) {
        self.owner = owner
    }
}

//let person = Person(petName: "Rex")
//let person = Person(name: "Rex")
//let pet = Pet()
//
//person.pet = pet
//pet.owner = person


//print(person.name)


class Employee: Person {
    var empId: Int
    
    init(empId: Int, name: String) {
        self.empId = empId
        super.init(name: name)
    }
    
    required init(name: String) {
        self.empId = 0
        super.init(name: name)
    }
}

