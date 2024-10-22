//
//  ObjectModel.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//

import SwiftUI
import Foundation

struct Object: Codable, Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var creationDate: Date
}
