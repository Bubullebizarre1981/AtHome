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
        guard let url = URL(string: "http://localhost:8081/spaces") else {
            print("Invalid URL")
            return
        }
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
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
