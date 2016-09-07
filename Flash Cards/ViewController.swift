//
//  ViewController.swift
//  Flash Cards
//
//  Created by Adan Huerta on 9/6/16.
//  Copyright © 2016 Adan Huerta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentQuestionNumber = 0
    let questions = ["Is you is , or is you ain't my baby?","What was SEGA's marketing buzzword about hardware that they used against Nintendo?", "What was the main hero's name in the video game, Rocket Knight Adventures?", "What is Super Mario's trusty dinosaur steed named?"]
    
    let answers = ["You is <3","Blast Processing","Sparkster","Yoshi"]
    
    
    @IBOutlet weak var
        questionLabel: UILabel!
    
    @IBOutlet weak var
        answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func nextQuestionButton(sender: AnyObject) {
        answerLabel.textColor = UIColor.whiteColor()
//        We will hide the answer by matching its text color to the background color.
        
        questionLabel.text = questions[currentQuestionNumber]
        
        answerLabel.text = answers[currentQuestionNumber]
        
        currentQuestionNumber += 1
        if(currentQuestionNumber == questions.count){
            currentQuestionNumber = 0
        }
    }
    
    
    @IBAction func
        revealAnswerButton(sender: AnyObject) {
        answerLabel.textColor = UIColor.blackColor()
//        Pressing the reveal button will change our answer's color into a visable black color.
    }
}

