//
//  SpaceViewModel.swift
//  AtHomeApp
//
//  Created by Apprenant 176 on 21/10/2024.
//
import Foundation

class SpaceViewModel: ObservableObject {
    @Published var spaces: [Space] = []
    
    /**
     Une méthode qui récupère les pièces
     
     - Returns : Rien.
     */
    public func fetchSpaces() {
        print("fetching data")
        guard let url = URL(string: "http://localhost:8081/spaces") else {
            print("Invalid URL")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedSpaces = try JSONDecoder().decode([Space].self, from: data)
                    DispatchQueue.main.async {
                        self.spaces = decodedSpaces
                    }
                } catch {
                    print("Error decoding data: \(data)")
                }
            } else if let error = error {
                print("Error decoding data: \(error)")
            }
        }.resume()
    }
}
