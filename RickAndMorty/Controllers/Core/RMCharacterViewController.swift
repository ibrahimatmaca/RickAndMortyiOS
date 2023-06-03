//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by İbrahim Atmaca on 3.06.2023.
//

import UIKit


/// Controller to show and search Characters
final class RMCharacterViewController: UIViewController {

    private let characterListView = CharacterListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        setUpView()
    }
    
    private func setUpView(){
        // Adds a view to the end of the receiver’s list of subviews.
        view.addSubview(characterListView)
        
        // For Auto Layout in CharacterListView
        NSLayoutConstraint.activate([
            characterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            characterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            characterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            characterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
