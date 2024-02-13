//
//  User.swift
//  AboutMe
//
//  Created by Denis Denisov on 13/2/24.
//

struct User {
    let username: String
    let password: String
    let person: Person
    let pet: Pet
    
    static func getUser() -> User {
        User(
            username: "User",
            password: "1111",
            person: Person.getPerson(),
            pet: Pet.getPet()
        )
    }
}
