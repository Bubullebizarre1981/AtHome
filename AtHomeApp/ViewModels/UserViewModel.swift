//
//  UserViewModel.swift
//  AtHomeApp
//
//  Created by Apprenant 166 on 21/10/2024.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var users: [User] = []
    private let baseUrl: String = "http://127.0.0.1:8081/users/"
    
    func register(name: String, email : String, password : String, confirmPassword : String) {
        //Configurer l'url
        let url = URL(string : baseUrl)!
        var request = URLRequest(url: url)
        
        //Configurer la requête
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        //Ajouter les identifiants dans le body
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: ["name" : name, "email": email, "password": password, "bestStreak" : 0, "actualStreak" : 0])
        } catch {
            fatalError("Erreur de serialisation en JSON")
        }
        
        //Exécuter la requête
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let responseHTTP = response as? HTTPURLResponse, responseHTTP.statusCode != 200 {
                print("Error")
                return
            }
//            if let error = error, let responseHTTP = response as? HTTPURLResponse, responseHTTP.statusCode != 200 {
//                print("\(error)")
//                return
//            }
            print("Registration successful")
        }.resume()
    }
    
    func login(email : String, password : String) {
        //Configurer l'url
        let url = URL(string : baseUrl + "login")!
        var request = URLRequest(url: url)
        
        //Configurer la requête
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        //Ajouter les identifiants dans le headers
        guard let authData = "\(email):\(password)".data(using: .utf8)?.base64EncodedString() else {
            print("Error : Impossible to encode in Base64")
            return
        }
        request.addValue("Basic \(authData)", forHTTPHeaderField: "Authorization")
        
        //Exécuter la requête
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard error == nil, let response = response as? HTTPURLResponse, response.statusCode == 200, let data = data else {
                print("Error: \(String(describing: error?.localizedDescription))")
                return
            }
            
            do {
                let token = try JSONDecoder().decode(JWToken.self, from: data)
                KeychainManager.saveTokenToKeychain(token: token.token)
            } catch {
                print("Error decoding Token")
            }
            
            print("Login successful")
        }.resume()
        
        return
    }
}
