//
//  ViewController.swift
//  RickAndMorty
//
//  Created by İbrahim Atmaca on 3.06.2023.
//

import UIKit

final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }

    // MARK: - TabBar üzerinde sayfaları çağırma işleminde bulunduk
    // Daha sonrasında sayfaları atama işlemi yaptık
    private func setupTabs(){
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingsVC  = RMSettingViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let navigationFirst = UINavigationController(rootViewController: characterVC)
        let navigationSecond = UINavigationController(rootViewController: locationVC)
        let navigationThird = UINavigationController(rootViewController: episodeVC)
        let navigationFourth = UINavigationController(rootViewController: settingsVC)
        
        navigationFirst.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "person"), tag: 1)
        navigationSecond.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "globe"), tag: 2)
        navigationThird.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "tv"), tag: 3)
        navigationFourth.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [navigationFirst,navigationSecond,navigationThird,navigationFourth] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            [navigationFirst,navigationSecond,navigationThird,navigationFourth],
            animated: true
        )
    }

}

