/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class JournalTableViewController: UITableViewController {

    let cellReuseIdentifier = "JournalEntryCell"
    let journalEntrySegueIdentifier = "journalEntry"
    let journal = Journal(entries: (0..<1000).map { JournalEntry(date: NSDate(), contents: "Contents for entry \($0)") })
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return journal.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellReuseIdentifier, forIndexPath: indexPath) 
        if let label = cell.textLabel,
            entry = journal.entry(indexPath.row) {
            label.text = "\(entry)"
        }
        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == journalEntrySegueIdentifier {
            if let journalEntryViewController = segue.destinationViewController as? JournalEntryViewController,
                cell = sender as? UITableViewCell,
                indexPath = self.tableView.indexPathForCell(cell),
                entry = journal.entry(indexPath.row) {
                    journalEntryViewController.journalEntry = entry
            }
        }
    }

}
