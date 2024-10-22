//
//  UserModel.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//

import Foundation

class User: Codable, Identifiable {
    var id = UUID()
    var name: String
    var email: String
    var password: String
    var best_streak: Int
    var actual_streak: Int
    
    init(name: String, email: String, password: String, best_streak: Int, actual_streak: Int) {
        self.name = name
        self.email = email
        self.password = password
        self.best_streak = best_streak
        self.actual_streak = actual_streak
    }
}
