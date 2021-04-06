//
//  Question.swift
//  Personal Quiz
//
//  Created by Mikhail Bukhrashvili on 06.04.2021.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Which food do you like?",
                type: .single,
                answers: [
                    Answer(title: "Steak", type: .dog),
                    Answer(title: "Fish", type: .cat),
                    Answer(title: "Carrot", type: .rabbit),
                    Answer(title: "Corn", type: .turtle)
                ]
            ),
            Question(
                title: "What do you like more?",
                type: .multiple,
                answers: [
                    Answer(title: "Swim", type: .dog),
                    Answer(title: "Sleep", type: .cat),
                    Answer(title: "Embrace", type: .rabbit),
                    Answer(title: "Eat", type: .turtle)
                ]
            ),
            Question(
                title: "Do you like to move by car?",
                type: .ranged,
                answers: [
                    Answer(title: "Hate", type: .cat),
                    Answer(title: "Nervous", type: .rabbit),
                    Answer(title: "Don't notice", type: .turtle),
                    Answer(title: "Adore", type: .dog)
                ]
            ),
        ]
    }
}

struct Answer {
    let title: String
    let type: AnimalType
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You like to be with friends. You surround yourself with people you like and are always ready to help you!"
        case .cat:
            return "You are out of your mind. You like to walk on your own. You value loneliness!"
        case .rabbit:
            return "You like everything soft. You are healthy and full of energy!"
        case .turtle:
            return "Your strength is wisdom! Slow and thoughtful wins in the long run!"
        }
    }
}

