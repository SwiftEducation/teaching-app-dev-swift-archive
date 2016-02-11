/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class NewJournalEntryViewController: UIViewController {

    @IBOutlet weak var journalEntryContents: UITextView!
    var journal: Journal?
    
    @IBAction func cancel(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func save(sender: UIBarButtonItem) {
        let entry = JournalEntry(date: NSDate(), contents: journalEntryContents.text)
        journal?.addEntry(entry)
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
