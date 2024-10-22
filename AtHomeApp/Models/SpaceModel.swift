//
//  SpaceModel.swift
//  AtHomeApp
//
//  Created by Apprenant 176 on 21/10/2024.
//

import Foundation

/**
 Documentation de la structure de donnée Space
 
 Cette structure réprésente une pièce de la maison qui conforme aux protocole qui contient plusieurs objets (voir ObjectModel)
 
 */
struct Space: Codable, Identifiable {
    /// ID de la pièce
    var id: UUID?
    /// Nom de la pièce
    var name: String
    /// Lien de l'image représentant la pièce
    var image: String
}
