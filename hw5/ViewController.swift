//
//  ViewController.swift
//  hw5
//
//  Created by User05 on 2018/12/5.
//  Copyright © 2018 User05. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    var score = 0
    @IBOutlet weak var scoreLabel: UILabel!
    class Qna{
        var question : String
        var ans : Int
        init(question:String,ans:Int){
            self.question = "請問誰是世界上最" + question + "的人"
            self.ans = ans
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func Press(_ sender: UIButton) {
        var Problems = ["帥","幽默","聰明","誠實","開心","有才幹","正直","勇敢","體貼","有主見","公正","獨創性","守信","謙虛","老實","受歡迎","真誠","感性","禮貌","孝順","穩健"]
        let names = ["Peter","John","Hanry","Ryan","Hook","Ben"]
        var label1 = Int.random(in:0...5)
        var label2 = Int.random(in:0...5)
        var label3 = Int.random(in:0...5)
        
        while (label1 != 0 && label2 != 0 && label3 != 0){
            label1 = 0
            label2 = 5
            label3 = 5
            while (label1 == label2 || label2 == label3 || label3 == label1){
                label1 = Int.random(in:0...5)
                if(label1 != 0){
                    label2 = Int.random(in:0...5)
                    if(label2 != 0){
                        label3 = Int.random(in:0...5)
                    }
                }
            }
        }
        
        let num = Int.random(in:0...19)
        let quest = Qna(question: Problems[num],ans: 0)
        question.text = quest.question
        button1.setTitle(names[label1], for: .normal)
        button2.setTitle(names[label2], for: .normal)
        button3.setTitle(names[label3], for: .normal)
        sender.isHidden = true
}

    


    
    @IBAction func buttonPress(_ sender: UIButton) {
        var Problems = ["帥","幽默","聰明","誠實","開心","有才幹","正直","勇敢","體貼","有主見","公正","獨創性","守信","謙虛","老實","受歡迎","真誠","感性","禮貌","孝順","穩健"]
        let names = ["Peter","John","Hanry","Ryan","Hook","Ben"]
        var label1 = Int.random(in:0...5)
        var label2 = Int.random(in:0...5)
        var label3 = Int.random(in:0...5)
        
        while (label1 != 0 && label2 != 0 && label3 != 0){
            label1 = 0
            label2 = 5
            label3 = 5
            while (label1 == label2 || label2 == label3 || label3 == label1){
                label1 = Int.random(in:0...5)
                if(label1 != 0){
                    label2 = Int.random(in:0...5)
                    if(label2 != 0){
                        label3 = Int.random(in:0...5)
                    }
                }
            }
        }
        
        let num = Int.random(in:0...19)
        let quest = Qna(question: Problems[num],ans: 0)
        if sender.currentTitle == "Peter" {
            scoreLabel.text = "Score:" + String(score + 30)
            score = score + 30
        }
        question.text = quest.question
        button1.setTitle(names[label1], for: .normal)
        button2.setTitle(names[label2], for: .normal)
        button3.setTitle(names[label3], for: .normal)
    }
}

