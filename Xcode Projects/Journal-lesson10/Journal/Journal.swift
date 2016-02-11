/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

class Journal {
    
    private var entries: [JournalEntry]
    var count: Int {
        return entries.count
    }

    init(entries: [JournalEntry]) {
        self.entries = entries
    }

    func addEntry(entry: JournalEntry) {
        entries.append(entry)
    }
    
    func entry(index: Int) -> JournalEntry? {
        if index >= 0 && index < count {
            return entries[index]
        } else {
            return nil
        }
    }
    
}
