//
//  UserViewModel.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var users: [User] = []
    private let baseUrl: String = "http://127.0.0.1:8081/users"
    
    func fetchUsers() {
        guard let url = URL(string : baseUrl) else {
            print("Invalid Url : Error")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedUsers = try JSONDecoder().decode([User].self, from: data)
                    DispatchQueue.main.async {
                        self.users = decodedUsers
                    }
                } catch {
                    print("Error decoding data : \(error)")
                }
            } else if let error = error {
                print("Error fetching data : \(error)")
            }
        }.resume()
    }
}
