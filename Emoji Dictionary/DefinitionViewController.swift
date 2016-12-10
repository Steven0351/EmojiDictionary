//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Steven Sherry on 12/10/16.
//  Copyright © 2016 AffinityforApps. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "no emoji"
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🍑" {
            definitionLabel.text = "Juicy bottom"
        }
        if emoji == "😂" {
            definitionLabel.text = "Laughing so hard I cry"
        }
        if emoji == "🍆" {
            definitionLabel.text = "Big dick"
        }
        if emoji == "💩" {
            definitionLabel.text = "Poop!"
        }
        if emoji == "😅" {
            definitionLabel.text = "Whoops!"
        }
        if emoji == "😱" {
            definitionLabel.text = "Scared to death"
        }
        if emoji == "😎" {
            definitionLabel.text = "Cool guy"
        }
        if emoji == "🌪" {
            definitionLabel.text = "Tornado"
        }
        if emoji == "😤" {
            definitionLabel.text = "Angry as fuck"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
