//: [Previous](@previous)
//: [Next](@next)
import Foundation

/*
 Problem Statement: Metro Card Lucky Number Journey Calculation
 
 Scenario: While traveling on the metro, you must punch your card to start your journey. 
 Punching the card serves two purposes:
 1. Detects the starting point.
 2. Verifies if the user has enough balance to begin the journey.
 
 Task: You frequently travel by metro and follow these practices:
 1. Top up your metro card with ₹500 whenever the balance is low.
 2. Each journey costs ₹45.
 
 Objective: Determine the number of journeys you need to make to achieve a specific favorite balance (in this case, ₹15) on your metro card and how many recharges it will take.

 Assumptions:
 1. The user starts with a new card (initial balance is ₹0).
 2. The only recharge option is ₹500.
 3. The user always travels for ₹45 per journey.
*/

func provideJourney(requiredNumber: Int, rechargeAmount: Int, perJourneyCharge: Int) {
    
    // TODO: Implement a check to verify achievability
    /// If the `requiredNumber` is even achievable with provided `perJourneyCharge and perJourneyCharge`
    /// eg. `provideJourney(requiredNumber: 15, rechargeAmount: 500, perJourneyCharge: 45)` is achievable
    /// but, `provideJourney(requiredNumber: 18, rechargeAmount: 500, perJourneyCharge: 45)` is not
    /*
     guard requiredNumber % perJourneyCharge <= rechargeAmount % perJourneyCharge else {
         print("The required number \(requiredNumber) is not achievable with recharge amount \(rechargeAmount) and journey charge \(perJourneyCharge).")
         return
     }
     */
    
    var bufferBalance = 0
    
    // Store user Data
    var journeysCount = 0
    var rechargeCount = 0
    var userBalance = 0
    
    if requiredNumber > rechargeAmount {
        print("Your provided number \(requiredNumber) is less way less then recharge amount \(rechargeAmount)!!")
    } else if requiredNumber < 0 {
        print("Provided negative number \"\(requiredNumber)\" might be hard to achieve")
    }
    
    while userBalance != requiredNumber {
        if userBalance < perJourneyCharge {
            if perJourneyCharge <= bufferBalance  {
                print("\n!! Low Balance !!")
                print("Remaining Balance is \(userBalance) and journy required \(perJourneyCharge)")
                print("So, we let user use buffer balance \(bufferBalance)")
                bufferBalance -= perJourneyCharge
                userBalance -= perJourneyCharge
                journeysCount += 1
                print("Now user Balance will be in negative \(userBalance)")
                print("To be adjusted in later recharge")
                print("\nJourney \(journeysCount) Done with remaining balance \(userBalance) ")
            } else {
                let dynamicWelcomeText = rechargeCount == 0
                ? "Ready for first Recharge"
                : "\nAlert!! Recharge Required: \(userBalance) balance"
                
                let bufferText = rechargeCount == 0 ? "Provided" : "Updated"
                print(dynamicWelcomeText)
                
                bufferBalance = perJourneyCharge
                rechargeCount += 1
                userBalance += rechargeAmount
                print("\(rechargeCount). Recharge Done!! \(userBalance) balance")
                print("\(bufferText) user buffer limit: \(bufferBalance)")
            }
        }
        
        if userBalance > 0 {
            userBalance -= perJourneyCharge
            journeysCount += 1
            print("Journey \(journeysCount) Done with remaining balance \(userBalance) ")
        }
    }
    
    print("\n--------- Final Result ---------")
    print("Total \(journeysCount) journey required to achive \(requiredNumber) number.")
    print("Also, you have to Topup your card \(rechargeCount) time(s)")
}

// Achievable Test Cases
provideJourney(requiredNumber: 15, rechargeAmount: 500, perJourneyCharge: 45)

// Not pssinle to achieve Test Cases
//provideJourney(requiredNumber: 13, rechargeAmount: 500, perJourneyCharge: 55)
//provideJourney(requiredNumber: 18, rechargeAmount: 500, perJourneyCharge: 45)


/*
func suggestRechargeOptions(requiredNumber: Int, perJourneyCharge: Int) {
    let maxRechargeAmount = 2000  // You can adjust this limit as needed
    let stepSize = 50             // Step size for trying different recharge amounts
    
    for rechargeAmount in stride(from: stepSize, through: maxRechargeAmount, by: stepSize) {
        print("\nTesting recharge amount: \(rechargeAmount)")
        provideJourney(requiredNumber: requiredNumber, rechargeAmount: rechargeAmount, perJourneyCharge: perJourneyCharge)
    }
}

suggestRechargeOptions(requiredNumber: 13, perJourneyCharge: 55)
*/
