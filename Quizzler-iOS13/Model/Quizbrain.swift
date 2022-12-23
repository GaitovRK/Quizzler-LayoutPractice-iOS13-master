//
//  Quizbrain.swift
//  Quizzler-iOS13
//
//  Created by Rashid Gaitov on 23.12.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Quizbrain {
    
    var currentQuestion = 0
    var score = 0
    
    var questions =  [Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")]

    
    func getAnswer() -> String {
        return questions[currentQuestion].correctAnswer
    }
    
    func getQuestion() -> String {
        return questions[currentQuestion].q
    }
    
    func getAnswerChoices() -> [String] {
        return questions[currentQuestion].a
    }
    
    mutating func nextQuestion() {
        if currentQuestion + 1 < questions.count {
            currentQuestion += 1
        } else {
            currentQuestion = 0
            score = 0
        }
    }
    
}
