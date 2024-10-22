//
//  ObjectViewModel.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//

import Foundation

class ObjectViewModel: ObservableObject {
    @Published var objects: [Object] = []
    private let baseUrl: String = "http://127.0.0.1:8081/objects"
    
    func fetchObjects() {
        guard let url = URL(string: baseUrl) else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .iso8601  // Use ISO8601 to decode the date string
                    let decodedObjects = try decoder.decode([Object].self, from: data)
                    DispatchQueue.main.async {
                        self.objects = decodedObjects
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
