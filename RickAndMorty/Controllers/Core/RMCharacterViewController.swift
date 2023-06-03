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
        
        RMService.shared.execute(.listCharactersRequests, excepting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total:"+String(model.info.pages))
                print("Page Result Count:"+String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }

}
