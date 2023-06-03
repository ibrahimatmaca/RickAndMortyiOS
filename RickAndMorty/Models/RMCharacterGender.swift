//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by İbrahim Atmaca on 3.06.2023.
//

import Foundation


enum RMCharacterGender: String, Codable {
    /// 'Female', 'Male', 'Genderless' or 'unknown'
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case unkown = "unkown"
}
