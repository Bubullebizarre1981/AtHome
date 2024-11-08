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
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
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
    
    func fetchObjectsBySpaceName(for spaceName: String) {
        guard let url = URL(string: "http://localhost:8081/objects/spaces/\(spaceName)") else {
            print("Invalid URL")
            return
        }
        
        var request = URLRequest(url: url)
        
        //Configurer la requête
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                do {
                    let decodedObjects = try JSONDecoder().decode([Object].self, from: data)
                    DispatchQueue.main.async {
                        self.objects = decodedObjects
                    }
                } catch {
                    print("Error decoding data: \(data)")
                }
            } else if let error = error {
                print("Error fetching data: \(error)")
            }
        }.resume()
    }
}
