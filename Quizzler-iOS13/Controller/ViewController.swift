//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var questionText: UILabel!
    
    @IBOutlet weak var barProgressView: UIImageView!
    
    
    var quizModel = quizBrain()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dislayQuestions()
        
    }
    
    
    @IBAction func answerClicked(_ sender: UIButton)
    {
        
        
        let userAnswer = sender.currentTitle!
      
        sender.backgroundColor = quizModel.checkAnswer(userAnswer)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
        {
            self.dislayQuestions()
        }
        quizModel.checkFinish()
  
    }
    
    
    func dislayQuestions()
    {
        questionText.text = quizModel.getQuestions()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        label.text = "Score : \(quizModel.getScore())"
    }
   
    
   
        
    }
    

