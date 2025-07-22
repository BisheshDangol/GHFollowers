//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Bishesh Dangol on 21/07/2025.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created a problem. Try again"
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again"
}
