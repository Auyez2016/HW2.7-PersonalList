//
//  PersonModel.swift
//  HW2.7 PersonalList
//
//  Created by Auyez on 11/4/20.
//

import Foundation

struct Person {
    let name: String
    let surename: String
    let email: String
    let phoneNumber: String
}

class DataManager {
    let names = ["Bruce", "John",
                 "Steven","Aaron",
                 "Tim", "Allan",
                 "Sharon", "Ted",
                 "Carl", "Nicola"]
    
    let surenames = ["Butler", "Smith",
                     "Black", "Robertson",
                     "Murphy", "Williams",
                     "Isaacson", "Jankin",
                     "Pennyworth", "Dow"]
    
    let emails = ["fukuchi@outlook.com", "drewf@verizon.net",
                  "liedra@hotmail.com", "madanm@msn.com",
                  "bflong@me.com", "milton@gmail.com",
                  "iamcal@me.com", "janneh@msn.com",
                  "ovprit@icloud.com", "scottlee@yahoo.ca"]
    
    let phoneNumbers = ["(796) 366-0127", "(851) 550-3868",
                        "(231) 938-8311", "(344) 784-4668",
                        "(669) 623-5828", "(645) 519-4828",
                        "(224) 724-8568", "(875) 202-5154",
                        "(224) 724-0123", "(669) 623-4542"]
    
    func randomPerson() -> Person {
        Person(name: names.randomElement()!,
               surename: surenames.randomElement()!,
               email: emails.randomElement()!,
               phoneNumber: phoneNumbers.randomElement()!)
        
    }
}

extension Person: Equatable {
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.name == rhs.name ||
            lhs.surename == rhs.surename ||
            lhs.email == rhs.email ||
            lhs.phoneNumber == rhs.phoneNumber
    }
}


extension Person {
    static func generatorOfUniqPersons(persons quantity: Int) -> [Person] {
        var result:[Person] = []
        let dataManager = DataManager()
        
        while result.count < quantity {
            let randomPerson = dataManager.randomPerson()
            
            if !result.contains(where: { $0 == randomPerson}) {
                result.append(randomPerson)
            }
        }
        return result
    }
}

let personList = Person.generatorOfUniqPersons(persons: 10)
