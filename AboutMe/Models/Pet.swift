//
//  Pet.swift
//  AboutMe
//
//  Created by Denis Denisov on 13/2/24.
//

struct Pet {
    let characteristic: String
    
    static func getPet() -> Pet {
        Pet(characteristic: "tomorrow")
    }
}
