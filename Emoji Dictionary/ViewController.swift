//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Steven Sherry on 12/10/16.
//  Copyright © 2016 AffinityforApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
       @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji  
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😂"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "Laughing so hard I cry"
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😅"
        emoji2.birthYear = 2012
        emoji2.category = "Smiley"
        emoji2.definition = "Heh...whoops..."
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.birthYear = 2014
        emoji3.category = "Smiley"
        emoji3.definition = "Poop face"
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😎"
        emoji4.birthYear = 2008
        emoji4.category = "Smiley"
        emoji4.definition = "Cool guy"
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😤"
        emoji5.birthYear = 2015
        emoji5.category = "Smiley"
        emoji5.definition = "Super angry"
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😱"
        emoji6.birthYear = 2015
        emoji6.category = "Smiley"
        emoji6.definition = "Scared to death"
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🍆"
        emoji7.birthYear = 2016
        emoji7.category = "Vegetable"
        emoji7.definition = "Eggplant...gross."
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🍑"
        emoji8.birthYear = 2013
        emoji8.category = "Fruit"
        emoji8.definition = "Juicy peach"
        let emoji9 = Emoji()
        emoji9.stringEmoji = "🌪"
        emoji9.birthYear = 2007
        emoji9.category = "Weather"
        emoji9.definition = "Tornado"
        
        return [emoji1, emoji2,emoji3, emoji4,emoji5, emoji6,emoji7, emoji8,emoji9]
        
    }
    }



