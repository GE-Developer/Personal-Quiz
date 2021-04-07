//
//  ResultsViewController.swift
//  Personal Quiz
//
//  Created by Mikhail Bukhrashvili on 06.04.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var smileLabel: UILabel!
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var naviItem: UINavigationItem!
    @IBOutlet var doneButton: UIBarButtonItem!
    
    // MARK: - Public Properties
    var answers: [Answer]!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        naviItem.hidesBackButton = true
        
        smileLabel.text = "You are - \(whichAnimal().rawValue)"
        textLabel.text = whichAnimal().definition
    }
    
}

// MARK: - Private Methods
extension ResultsViewController {
    
    private func whichAnimal() -> AnimalType {
        var typeOfAnimals: [AnimalType: Int] = [.dog: 0, .cat: 0, .rabbit: 0, .turtle: 0]
        var animal: AnimalType = .dog
        
        for answer in answers {
            switch answer.type {
            case .dog:
                typeOfAnimals[.dog]! += 1
            case .cat:
                typeOfAnimals[.cat]! += 1
            case .rabbit:
                typeOfAnimals[.rabbit]! += 1
            case .turtle:
                typeOfAnimals[.turtle]! += 1
            }
            // Так и не получилось без принудительного извлечения обойтись
        }
        
        for (key, value) in typeOfAnimals {
            if value == typeOfAnimals.values.max() {
                animal = key
            }
        }
        return animal
    }
    
}
