//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by İbrahim Atmaca on 3.06.2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    /// 'Alive', 'Dead' or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case `unkown` = "unkown"
}
