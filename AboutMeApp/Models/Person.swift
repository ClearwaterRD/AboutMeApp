//
//  Person.swift
//  AboutMeApp
//
//  Created by Roman Dubovskoi on 7/25/24.
//

struct Person {
    let name: String
    let lastName: String
    let company: String
    let department: String
    let post: String
    let additionalInfo: String
    
    static func getBio() -> Person {
        Person(
            name: "Bruce",
            lastName: "Banner",
            company: "Avengers",
            department: "Protecting The Planet",
            post: "Bouncer",
            additionalInfo: "The child of an abusive father, Bruce Banner grew up shy and introverted, yet a scientific genius. As a young man, thanks to his standout work in the field of nuclear physics, he attracted the attention of the U.S. Army who wanted to adapt his theories for weaponry."
        )
    }
}

struct User {
    let login: String
    let password: String
    
    static func getUserInfo() -> User {
        User(login: "Chemp", password: "qwerty10")
    }
}


