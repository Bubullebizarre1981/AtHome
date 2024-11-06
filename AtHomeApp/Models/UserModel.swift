//
//  UserModel.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//

import Foundation

class User: Codable, Identifiable {
    var id : UUID?
    var name: String
    var email: String
    var bestStreak: Int
    var actualStreak: Int
    
    init(id: UUID? = nil, name: String, email: String, bestStreak: Int, actualStreak: Int) {
        self.id = id
        self.name = name
        self.email = email
        self.bestStreak = bestStreak
        self.actualStreak = actualStreak
    }
}
