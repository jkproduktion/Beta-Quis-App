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
    
    //MARK: -viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: -Action
    @IBAction func answerButtonAction(_ sender: UIButton) {
    }
    
}

