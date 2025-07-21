//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Bishesh Dangol on 20/07/2025.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let baseUrl: String = "https://api.github.com/users/"
    private init() {
        
    }
    
    func getFollowers(for username: String, page: Int, completed: @escaping([Follower]?, String?) -> Void) {
        let endpoint = baseUrl + "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed (nil, "This username created a problem. Try again")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            
            if let _ = error {
                completed(nil, "Unable to complete your request. Please check your internet connection.")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                completed(nil, "Invalid response from the server. Please try again.")
                return
            }
            
            guard let data = data else {
                completed(nil, "The data received from the server was invalid. Please try again")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                // Convert from snake case to camel case
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                completed(nil, "Unable to decode the data. Please try again.")
                return
            }
        }
        
        task.resume()
    }
    
}
