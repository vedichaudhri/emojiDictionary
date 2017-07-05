//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Vedi Chaudhri on 7/5/17.
//  Copyright © 2017 Vedi Chaudhri. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var createdLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //print(emoji)
        emojiLabel.text = emoji.stringEmoji
        createdLabel.text = "Created: \(emoji.birthYear)"
        definitionLabel.text = emoji.definition
        categoryLabel.text = emoji.category
        
//        if emoji == "😀" {
//            definitionLabel.text = "Generic Smiley Face"
//        }
//        else {
//            definitionLabel.text = "Definition Unknown"
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
