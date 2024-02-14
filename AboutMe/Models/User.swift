//
//  User.swift
//  AboutMe
//
//  Created by Denis Denisov on 13/2/24.
//
import Foundation

struct User {
    let username: String
    let password: String
    let welcomeImage: String
    let person: Person
    let pet: Pet
    
    static func getUser() -> User {
        User(
            username: "User",
            password: "1111",
            welcomeImage: "lexPic",
            person: Person(
                name: "Den",
                surname: "Denisov",
                age: "22",
                photo: "den",
                activity: "IOS-Developer",
                biography: "С 3 лет занимаюсь хоккеем. Родился и рос в Хабаровске. Уехал играть в Канаду в 15 , играл там 5 лет. Получилось по играть 2 года профессионально, но жизнь распорядилась по другому. И пришлось уехать обратно в Хабаровск. Заканчивал канадское образование онлайн. И параллельно решил изучать IT сферу. Я влюбился в технологии и решил связать с этим жизнь."
            ),
            pet: Pet(
                photo: "realLexus",
                characteristic: "Это Лекс. Его порода Шиба-Ину. Он любит валяться целыми днями и ничего не делать. Но когда идет в нем просыпается вторая личность, которая хочет исследовать весь мир."
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: String
    let photo: String
    
    let activity: String
    let biography: String
}

struct Pet {
    let photo: String
    let characteristic: String
}
