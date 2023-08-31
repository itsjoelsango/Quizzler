//
//  ViewController.swift
//  Quizzler
//
//  Created by Jo Michael on 8/29/23.
//

import UIKit
import ProgressHUD

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    let questions = QuestionBank()
    var pickedAnswer = false
    var questionNumber: Int = 0
    private var score: Int = 0
    
    @IBOutlet weak var progressBarWidthConstant: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber += 1
        
        nextQuestion()
    }
    
    func updateUI() {
        scoreLabel.text = "score: \(score) out of \(questions.numberOfQuestion())"
        progressLabel.text = "\(questionNumber)/\(questions.numberOfQuestion())"
        
        self.progressBarWidthConstant.constant = (self.view.frame.size.width / CGFloat(questions.numberOfQuestion())) * CGFloat(questionNumber)
        
    }
    
    func nextQuestion() {
        if questionNumber < questions.list.count {
            questionLabel.text = questions.list[questionNumber].question
            
            updateUI()
            
        } else {
            
            updateUI()
            
            let alert = UIAlertController(title: "Awesome", message: "Your score is \(score) out of \(questions.numberOfQuestion()). Do you wish to start over?", preferredStyle: .alert)
            
            let alertAction = UIAlertAction(title: NSLocalizedString("Restart", comment: "Default action"), style: .default) { _ in
                NSLog("The \"OK\" alert occured.")
                self.startOver()
            }
            
            alert.addAction(alertAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    func checkAnswer(){
        let correctAnswer = questions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSucceed("Correct")
            print("You've got it!")
            score += 1
        } else {
            ProgressHUD.showFailed("Wrong!")
            print("Wrong!!!")
        }
    }
    
    func startOver(){
        questionNumber = 0
        score = 0
        nextQuestion()
    }
    

}

