//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Vedi Chaudhri on 7/3/17.
//  Copyright © 2017 Vedi Chaudhri. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    //how many rows and what should go inside each row
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue" , sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //print(sender as Any)
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        print("entered")
//        let defVC = segue.destination as! DefinitionViewController
//        defVC.emoji = sender as! String
//        defVC.emoji = sender as! String
//    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "smiley"
        emoji1.definition = "a smiley face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😄"
        emoji2.birthYear = 2010
        emoji2.category = "smiley"
        emoji2.definition = "also a smiley face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😎"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😍"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🙉"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🍆"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
    }


}

