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
    
    func fetchObjets() {
        guard let url = URL(string : baseUrl) else {
            print("Invalid Url : Error")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedObjects = try JSONDecoder().decode([Object].self, from: data)
                    DispatchQueue.main.async {
                        self.objects = decodedObjects
                    }
                } catch {
                    print("Error decoding data : \(error)")
                }
            } else if let error = error {
                print("Error fetching data : \(error)")
            }
        }.resume()
        
        print(objects)
    }
}
