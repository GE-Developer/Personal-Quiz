//
//  BackgroundCollor.swift
//  Personal Quiz
//
//  Created by Mikhail Bukhrashvili on 07.04.2021.
//

import UIKit

// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [
            UIColor(red: 255/255, green: 240/255, blue: 255/255, alpha: 1).cgColor,
            UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1).cgColor
        ]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
