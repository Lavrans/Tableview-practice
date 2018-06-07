//
//  ViewController.swift
//  Tableviewshit
//
//  Created by Lavrans Kaul Sagen on 26/04/2018.
//  Copyright © 2018 Lavrans Kaul Sagen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.delegate = self
        tableview.dataSource = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.pic
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableview.deselectRow(at: indexPath, animated: true)
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
    
    func makeEmojiArray () -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.pic = "😀"
        emoji1.definition = "A happy dude!"
        emoji1.category = "smiley"
        
        let emoji2 = Emoji()
        emoji2.pic = "😂"
        emoji2.definition = "A laughing dude!"
        emoji2.category = "smiley"
        
        let emoji3 = Emoji()
        emoji3.pic = "❤️"
        emoji3.definition = "A sign of love!"
        emoji3.category = "hearts"
        
        let emoji4 = Emoji()
        emoji4.pic = "💩"
        emoji4.definition = "A happy poop!"
        emoji4.category = "smiley"
        
        let emoji5 = Emoji()
        emoji5.pic = "👌🏼"
        emoji5.definition = "OKAY MAH MAN!"
        emoji5.category = "fingersymbol"
        
        let emoji6 = Emoji()
        emoji6.pic = "😇"
        emoji6.definition = "A sweet angel!"
        emoji6.category = "smiley"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }


}

