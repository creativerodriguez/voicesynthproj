//
//  ViewController.swift
//  voicesynthproj
//
//  Created by Orlando Rodriguez on 12/11/17.
//  Copyright © 2017 Creative Rodriguez. All rights reserved.
//

import UIKit
import AVFoundation

enum modes {
    case ADDITION
    case SUBTRACTION
    case MUTIPLICATION
    case NOT_SET
    
}

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var label: UILabel!
    var labelString:String = "0"
    var currentMode:modes = modes.NOT_SET
    var savedNum:Int = 0
    var lastButtonWasMode:Bool = false
    var say = AVSpeechUtterance(string: "")
    
    func sayString(str:String) {
        say = AVSpeechUtterance(string: str)
        say.rate = 0.5
        say.voice = AVSpeechSynthesisVoice(language: "en-AU")
        guard synth.isSpeaking else
        {
            synth.speak(say)
            return
        }
    }
    
    @IBAction func didHitShit(sender: UIButton) {
        self.didScore(points: 1)
        sayString(str: "Hit that Shit mother fucker!")
        
    }
    
    @IBAction func didHitAlien(sender: UIButton) {
        didScore(points: 5)
        sayString(str: "John Buresh.  Hey Buresh.    What the hell you looking at?    Why do you grow tomatoes.   I hate tomatoes.    Hold up! Someone better call the cops tonight, because I'm about to get rat tat tat on a mother fucker! I'm Gangsta Siri, better recognize.")
    }
    
    func didScore(points:Int) {
        savedNum += points
        label.text = "Score: \(savedNum)"
    }
    
    
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    
    @IBAction func textToSpeech(sender: UIButton)
    {
        sayString(str: "Hey John Jones.    What the hell you looking at?    Better turn your eyes before they get snatched.    Someone better call the cops tonight, because I'm about to get rat tat tat on a mother fucker!")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


