//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var model = Quizbrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = model.getAnswer()
        
        if userAnswer == actualAnswer {
            sender.setTitleColor(.green, for: .normal)
            model.score += 1
        } else {
            sender.setTitleColor(.red, for: .normal)
        }
        
        model.nextQuestion()

        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        questionLabel.text = model.getQuestion()
        self.firstButton.setTitleColor(.white, for: .normal)
        self.secondButton.setTitleColor(.white, for: .normal)
        self.thirdButton.setTitleColor(.white, for: .normal)
        
        self.firstButton.setTitle(model.getAnswerChoices()[0], for: .normal)
        self.secondButton.setTitle(model.getAnswerChoices()[1], for: .normal)
        self.thirdButton.setTitle(model.getAnswerChoices()[2], for: .normal)

        self.scoreLabel.text = "Score: \(model.score)"
        
        progressBar.progress = Float(model.currentQuestion) / Float(model.questions.count)

    }
}

