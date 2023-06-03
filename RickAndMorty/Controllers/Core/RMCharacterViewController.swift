//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by İbrahim Atmaca on 3.06.2023.
//

import UIKit


/// Controller to show and search Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            pathComponents: ["1"],
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive"),
            ]
        )
        
        print(request.url)
        
        RMService.shared.execute(request, exceptiong: RMCharacter.self) { result in
            
        }
    }

}
