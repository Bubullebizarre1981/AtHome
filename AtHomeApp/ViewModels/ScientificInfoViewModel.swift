//
//  ScientificInfoViewModel.swift
//  AtHomeApp
//
//  Created by Apprenant 171 on 21/10/2024.
//

import Foundation

class ScientificViewModel: ObservableObject {
    @Published var objects: [ScientificInfo] = []
    /**
     Fonction pour récupérer les data du tableau qui se trouve dans le fichier JSON`
     */
    //func fetchCat() {
    //   guard let url = URL(string: "http://localhost:8081/object/") else {
    //       print("Invalid URL")
    //       return
    //   }
    //
    //   URLSession.shared.dataTask(with: url) { data, response, error in
    //       if let data = data {
    //           do {
    //               let decodedCat = try JSONDecoder().decode([ScientificInfo].self, from: data)
    //               DispatchQueue.main.async {
    //                   print ("fetched worked")
    //                   self.categorie = decodedCat
    //               }
    //           } catch {
    //               print("Error decoding data: \(error)")
    //           }
    //       } else if let error = error {
    //           print("Error fetching data: \(error)")
    //       }
    //   }.resume()
    //}
}
