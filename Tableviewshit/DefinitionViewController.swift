//
//  DefinitionViewController.swift
//  Tableviewshit
//
//  Created by Lavrans Kaul Sagen on 07/05/2018.
//  Copyright © 2018 Lavrans Kaul Sagen. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😀" {
            definitionLabel.text = "A happy dude!"
        }
        if emoji == "😂" {
            definitionLabel.text = "A laughing dude!"
        }
        if emoji == "❤️" {
            definitionLabel.text = "A sign of love!"
        }
        if emoji == "💩" {
            definitionLabel.text = "A happy poop!"
        }
        if emoji == "👌🏼" {
            definitionLabel.text = "OKAY MAH MAN!"
        }
        if emoji == "😇" {
            definitionLabel.text = "A sweet angel!"
        }
        if emoji == "😕" {
            definitionLabel.text = "ehm... okay"
        }
        if emoji == "😍" {
            definitionLabel.text = "A guy blinded by love!"
        }
        if emoji == "😭" {
            definitionLabel.text = "A really sad dude"
        }
        if emoji == "😞" {
            definitionLabel.text = "A depressed dude"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
