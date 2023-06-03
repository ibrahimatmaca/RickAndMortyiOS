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
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        exceptiong type: T.Type,
        completion: @escaping (Result<T,Error>) -> Void
    ) {
        
    }
    
}
