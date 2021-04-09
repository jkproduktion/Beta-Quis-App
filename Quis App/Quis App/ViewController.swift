//
//  ViewController.swift
//  Quis App
//
//  Created by Nils Zentgraf on 08.04.21.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: -Outlets
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerButtonOne: UIButton!
    @IBOutlet weak var answerButtonTow: UIButton!
    @IBOutlet weak var answerButtonthree: UIButton!
    
    
    @IBOutlet weak var questibCountLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var progressBarView: UIView!
    
    //MARK: -variable
    var questions = [Question]()
    
    var questionNumber = 0
    var score = 0
    
    //MARK: -viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Setup Button
        setupButtom()
        
        //Fragen erstellen
        createQuestionObjects()
        
        //Erste Frage anzeigen
        questionLabel.text = questions[0].questionText
        answerButtonOne.setTitle(questions[0].answerOne, for: .normal)
        answerButtonTow.setTitle(questions[0].answerTow, for: .normal)
        answerButtonthree.setTitle(questions[0].answerThree, for: .normal)
        
        //UI einrichten
        scoreLabel.text = "Score: 0"
        questibCountLabel.text = "1 / \(questions.count)"
    }
    
    //MARK: -setup Button
    func setupButtom(){
        //Tag vergeben
        answerButtonOne.tag = 1
        answerButtonTow.tag = 2
        answerButtonthree.tag = 3
        
        answerButtonOne.layer.cornerRadius = 20
        answerButtonOne.layer.borderWidth = 2
        answerButtonOne.layer.borderColor = UIColor.black.cgColor
        
        answerButtonTow.layer.cornerRadius = 20
        answerButtonTow.layer.borderWidth = 2
        answerButtonTow.layer.borderColor = UIColor.black.cgColor
        
        answerButtonthree.layer.cornerRadius = 20
        answerButtonthree.layer.borderWidth = 2
        answerButtonthree.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func answerButtonAction(_ sender: UIButton) {
        let answerTag = sender.tag
        
        //Antwort prüfen
        checkAnswer(answerTag: answerTag)
        
        //nächste Frage laden
        nextQuestion()
    }
    
    func checkAnswer(answerTag: Int){
        print("Richtig")
        if answerTag == questions[questionNumber].correctAnswerTag{
            score += 10
        }else{
            print("Falsch")
        }
        
        questionNumber += 1
    }
    
    func nextQuestion(){
        if questionNumber < questions.count{
            questionLabel.text = questions[questionNumber].questionText
            answerButtonOne.setTitle(questions[questionNumber].answerOne, for: .normal)
            answerButtonTow.setTitle(questions[questionNumber].answerTow, for: .normal)
            answerButtonthree.setTitle(questions[questionNumber].answerThree, for: .normal)
            
            updateUI()
        }else{
            //Neustart
            
        }
    }
    
    //MARK: -Update UI
    func updateUI(){
        scoreLabel.text = "Score: \(score)"
        questibCountLabel.text = "\(questionNumber + 1) / \(questions.count)"
        
        let widthIphone = self.view.frame.size.width
        let widhPrograssCountView = Int(widthIphone) / questions.count
        
        progressBarView.frame.size.width = CGFloat(widhPrograssCountView) * CGFloat(questionNumber + 1)
    }
    
    
    //MARK: -Create question objects
    func createQuestionObjects(){
        let question1 = Question(questionText: "Hauptstadt von Deutschland?")
        question1.answerOne = "Berlin"
        question1.answerTow = "Hamburg"
        question1.answerThree = "München"
        question1.correctAnswerTag = 1
        

        let question2 = Question(questionText: "Hauptstadt von Polen?")
        question2.answerOne = "Berlin"
        question2.answerTow = "Warschau"
        question2.answerThree = "München"
        question2.correctAnswerTag = 2
        

        let question3 = Question(questionText: "Hauptstadt von Belgien?")
        question3.answerOne = "Berlin"
        question3.answerTow = "Hamburg"
        question3.answerThree = "Brüssel"
        question3.correctAnswerTag = 3
        

        let question4 = Question(questionText: "Hauptstadt von Össterreich?")
        question4.answerOne = "Wien"
        question4.answerTow = "Hamburg"
        question4.answerThree = "München"
        question4.correctAnswerTag = 1
        

        let question5 = Question(questionText: "Hauptstadt von Bulgarien?")
        question5.answerOne = "Berlin"
        question5.answerTow = "Sofia"
        question5.answerThree = "München"
        question5.correctAnswerTag = 2
        

        let question6 = Question(questionText: "Hauptstadt von Ungarn?")
        question6.answerOne = "Budapest"
        question6.answerTow = "Hamburg"
        question6.answerThree = "München"
        question6.correctAnswerTag = 1
        

        let question7 = Question(questionText: "Hauptstadt von Tschechien?")
        question7.answerOne = "Berlin"
        question7.answerTow = "Prag"
        question7.answerThree = "München"
        question7.correctAnswerTag = 2
        
        
        questions.append(question1)
        questions.append(question2)
        questions.append(question3)
        questions.append(question4)
        questions.append(question5)
        questions.append(question6)
        questions.append(question7)


    }
    
}

