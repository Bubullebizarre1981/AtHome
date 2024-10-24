//
//  ScientificInfoViewModel.swift
//  AtHomeApp
//
//  Created by Apprenant 171 on 21/10/2024.
//

import Foundation

class ScientificInfoViewModel: ObservableObject {
    @Published var scientificInfos: [ScientificInfo] = []
    private let baseUrl: String = "http://127.0.0.1:8081/scientificInfos"
    /**
     Fonction pour récupérer les data du tableau qui se trouve dans le fichier JSON`
     */
    func fetchInfos() {
       guard let url = URL(string: "\(baseUrl)") else {
           print("Invalid URL")
           return
       }
    
       URLSession.shared.dataTask(with: url) { data, response, error in
           if let data = data {
               do {
                   let decoder = JSONDecoder()
                   decoder.dateDecodingStrategy = .iso8601
                   let decodedScientificInfos = try decoder.decode([ScientificInfo].self, from: data)
                   DispatchQueue.main.async {
                       self.scientificInfos = decodedScientificInfos
                   }
               } catch {
                   print("Error decoding data: \(error)")
               }
           } else if let error = error {
               print("Error fetching data: \(error)")
           }
       }.resume()
    }
    
    /**
     Fonction pour récupérer les data du tableau qui se trouve dans le fichier JSON à partir de l'ID d'un Objet
     */
    func fetchInfosByObjetcID(objectID: String) {
       guard let url = URL(string: "\(baseUrl)/object/\(objectID)") else {
           print("Invalid URL")
           return
       }
    
       URLSession.shared.dataTask(with: url) { data, response, error in
           if let data = data {
               do {
                   let decoder = JSONDecoder()
                   decoder.dateDecodingStrategy = .iso8601
//                   let decodedScientificInfos = try decoder.decode([ScientificInfo].self, from: data)
                   let decodedScientificInfos = try decoder.decode([ScientificInfo].self, from: data)
                   DispatchQueue.main.async {
                       self.scientificInfos = decodedScientificInfos
                   }
               } catch {
                   print("Error decoding data: \(error)")
               }
           } else if let error = error {
               print("Error fetching data: \(error)")
           }
       }.resume()
    }
}
