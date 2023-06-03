//
//  RMService.swift
//  RickAndMorty
//
//  Created by İbrahim Atmaca on 3.06.2023.
//

import Foundation

// MARK: - Primary API service object to get Rick And Morty data
final class RMService {
    /// Shared Singleton instance
    static let shared = RMService()
    /// Privatized constructor
    private init() {}

    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
    
}
