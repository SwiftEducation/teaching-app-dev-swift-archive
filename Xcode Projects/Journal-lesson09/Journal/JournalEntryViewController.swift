/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class JournalEntryViewController: UIViewController {
    
    @IBOutlet weak var journalEntryContents: UITextView!
    var journalEntry: JournalEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let journalEntry = journalEntry {
            journalEntryContents.text = journalEntry.contents
            navigationItem.title = "Oct 5, 2015 9:41 AM" //journalEntry.description
        }
    }
    
}
