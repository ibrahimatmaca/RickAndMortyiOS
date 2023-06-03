//
//  Extensions.swift
//  RickAndMorty
//
//  Created by İbrahim Atmaca on 3.06.2023.
//

import UIKit

extension UIView {
    /// Add multiple subviews
    /// - Parameter views: Variadic views
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}


extension UIDevice {
    /// Check if current device is phone idiom
    static let isiPhone = UIDevice.current.userInterfaceIdiom == .phone
}
