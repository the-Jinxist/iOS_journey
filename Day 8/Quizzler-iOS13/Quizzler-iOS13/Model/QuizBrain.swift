//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Favour Olukayode on 01/12/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let questions = [
        Question(q: "Messi is the best player in de world", a: "True"),
        Question(q: "Rice is better than beans", a: "False"),
        Question(q: "Neymar is top 3", a: "False"),
        Question(q: "Messi is the best player in de world", a: "True"),
        Question(q: "Rice is better than beans", a: "False"),
        Question(q: "Neymar is top 3", a: "False"),
        Question(q: "Messi is the best player in de world", a: "True"),
        Question(q: "Rice is better than beans", a: "False"),
        Question(q: "Neymar is top 3", a: "False"),
        Question(q: "Messi is the best player in de world", a: "True"),
        Question(q: "Rice is better than beans", a: "False"),
        Question(q: "Neymar is top 3", a: "False"),
        Question(q: "Messi is the best player in de world", a: "True"),
        Question(q: "Rice is better than beans", a: "False"),
        Question(q: "Neymar is top 3", a: "False"),
        Question(q: "Messi is the best player in de world", a: "True"),
        Question(q: "Rice is better than beans", a: "False"),
        Question(q: "Neymar is top 3", a: "False"),
        Question(q: "Messi is the best player in de world", a: "True"),
        Question(q: "Rice is better than beans", a: "False"),
        Question(q: "Neymar is top 3", a: "False")
    ]
    
    var questionNumber: Int = 0
    var userScore: Int = 0
    
    mutating func checkAnswer(userAnswer: String) -> Bool{
        if userAnswer == questions[questionNumber].answer {
            //User got it right
            userScore += 1
            return true
        } else{
            //User got it wrong
            return false
        }
    }
    
    func getScore() -> Int {
        return userScore
    }
    
    func getQuestionText () -> String {
        return questions[questionNumber].title
    }
    
    func getProgress () -> Float {
        let progress: Float = Float(questionNumber) / Float(questions.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < questions.count {
            questionNumber += 1
        } else {
            userScore += 0
            questionNumber = 0
        }
    }
}
