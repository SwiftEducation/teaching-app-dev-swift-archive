/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

class JournalEntry: CustomStringConvertible {
    
    let date: NSDate
    let contents: String
    let dateFormatter = NSDateFormatter()
    var description: String {
        return dateFormatter.stringFromDate(date)
    }
    
    init(date: NSDate, contents: String) {
        self.date = date
        self.contents = contents
        dateFormatter.dateStyle = .MediumStyle
        dateFormatter.timeStyle = .ShortStyle
    }
    
}
