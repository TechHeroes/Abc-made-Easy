//
//  Created by Mansoor Khan <thisismansoorkhan@gmail.com> on 23/12/22.
//

import UIKit

class Level1ViewController: EventHandler {
    @IBOutlet weak var L1letterView: UITextView!
    var nextKey = 0
    
    override func nextCard(_ sender: Any) {
        nextKey = (nextKey + 1) % letterCount
        setTextAndSound(index: nextKey, target: L1letterView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTextFont(textView: L1letterView)
        setTextAndSound(index: nextKey, target: L1letterView)
        addTapEvent()
    }
}
