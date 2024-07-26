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
    
    static func getBio() -> Person {
        Person(name: "Mr", lastName: "Perfecto", company: "StarWars", department: "Allian Translator", post: "Helper")
    }
}

struct User {
    let login: String
    let password: String
    
    static func getUserInfo() -> User {
        User(login: "Chemp", password: "qwerty10")
    }
}


