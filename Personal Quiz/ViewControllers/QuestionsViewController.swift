//
//  QuestionsViewController.swift
//  Personal Quiz
//
//  Created by Mikhail Bukhrashvili on 06.04.2021.
//

import UIKit

class QuestionsViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var questionProgressView: UIProgressView!
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwitches: [UISwitch]!
    
    @IBOutlet var rangedStackView: UIStackView!
    @IBOutlet var rangedLabels: [UILabel]!
    @IBOutlet var rangedSlider: UISlider!
    
    // MARK: - Private Properties
    private let questions = Question.getQuestions()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - IB Action
    @IBAction func singleAnswerButtonPressed(_ sender: Any) {
    }
    
    @IBAction func multipleAnswerButtonPressed() {
    }
    
    @IBAction func rangedAnswerButtonPressed() {
    }
    
}

// MARK: - Private Methods
extension QuestionsViewController {
    private func setupUI() {
        // Скрываем стеки
        for stackView in [singleStackView, multipleStackView, rangedStackView] {
            stackView?.isHidden.toggle()
        }
        
    }
}
