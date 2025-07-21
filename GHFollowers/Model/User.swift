//
//  User.swift
//  GHFollowers
//
//  Created by Bishesh Dangol on 20/07/2025.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var htmlUrl: String
    var publicRepos: Int
    var publicGists: Int
    var following: Int
    var followers: Int
    var createdAt: String
}
