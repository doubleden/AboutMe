//
//  Pet.swift
//  AboutMe
//
//  Created by Denis Denisov on 13/2/24.
//

struct Pet {
    let name: String
    let description: String
    
    static func getPet() -> Pet {
        Pet(name: "Lexus", description: "tomorrow")
    }
}
