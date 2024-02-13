//
//  Person.swift
//  AboutMe
//
//  Created by Denis Denisov on 13/2/24.
//

struct Person {
    let name: String
    let surname: String
    let age: String
    
    let activity: String
    let biography: String
    
    static func getPerson() -> Person {
        Person(
            name: "Den",
            surname: "Denisov",
            age: "22",
            activity: "IOS-Developer",
            biography: "ЗАвтра"
        )
    }
}
