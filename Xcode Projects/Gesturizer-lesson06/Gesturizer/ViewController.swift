/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gestureName: UILabel!
    @IBOutlet var singleTapRecognizer: UITapGestureRecognizer!
    @IBOutlet var doubleTapRecognizer: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        singleTapRecognizer.requireGestureRecognizerToFail(doubleTapRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func singleTap(sender: UITapGestureRecognizer) {
        showGestureName("Tap")
    }
    
    @IBAction func doubleTap(sender: UITapGestureRecognizer) {
        showGestureName("Double Tap")
    }
    
    func showGestureName(name: String) {
        gestureName.text = name
        UIView.animateWithDuration(1.0,
            animations: { self.gestureName.alpha = 1.0 },
            completion: { _ in
                UIView.animateWithDuration(1.0) { self.gestureName.alpha = 0 }
        })
    }
    
}

