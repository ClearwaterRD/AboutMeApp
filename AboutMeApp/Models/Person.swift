//
//  Person.swift
//  AboutMeApp
//
//  Created by Roman Dubovskoi on 7/25/24.
//



struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        User(
            login: "Chemp",
            password: "qwerty10",
            person: Person(
                name: "Bruce",
                lastName: "Banner",
                company: "Avengers",
                department: "Protecting The Planet",
                post: "Bouncer",
                personImage: "hulkImage",
                additionalInfo: "The child of an abusive father, Bruce Banner grew up shy and introverted, yet a scientific genius. As a young man, thanks to his standout work in the field of nuclear physics, he attracted the attention of the U.S. Army who wanted to adapt his theories for weaponry."
            )
        )
    }
}


struct Person {
    let name: String
    let lastName: String
    let company: String
    let department: String
    let post: String
    let personImage: String
    let additionalInfo: String
    
}
