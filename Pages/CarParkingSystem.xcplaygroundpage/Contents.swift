//: [Previous](@previous)

import Foundation

/*
 Problem Statement: Parking Garage Management System
 
 Scenario: You are tasked with designing a parking garage management system for a parking facility. The parking garage has a limited capacity, and cars can be parked or removed based on their license plate numbers. You need to implement functionalities to park cars, remove cars, and display the list of parked cars.
 */

class ParkingGarage {
    var capacity: Int
    var parkedCars: [String]
    
    init(capacity: Int) {
        self.capacity = capacity
        self.parkedCars = []
    }
    
    func parkCar(licensePlate: String) -> Bool {
        if parkedCars.count >= capacity {
            print("Could not park the car: \(licensePlate)")
            return false
        } else {
            parkedCars.append(licensePlate)
            print("Car Parked: \(licensePlate)")
            return true
        }
    }
    
    func removeCar(licensePlate: String) -> String? {
        if let index = parkedCars.firstIndex(of: licensePlate) {
            let removeCar = parkedCars.remove(at: index)
            print("Car with license plate - \(licensePlate) removed from garage")
            return removeCar
        } else {
            print("Car with license plate - \(licensePlate) could not be found from garage")
            return nil
        }
    }
    
    func displayParkedCar() {
        if parkedCars.isEmpty{
            print("No Car in parking.")
        } else {
            for car in parkedCars {
                print(car)
            }
        }
    }
}

let garage = ParkingGarage(capacity: 3)

garage.parkCar(licensePlate: "UP81")
garage.parkCar(licensePlate: "UP16")
garage.parkCar(licensePlate: "UP14")

garage.removeCar(licensePlate: "UP80")

garage.parkCar(licensePlate: "UP76")
garage.parkCar(licensePlate: "UP80")

garage.displayParkedCar()


//: [Next](@next)
