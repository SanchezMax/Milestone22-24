//
//  ViewController.swift
//  Milestone22-24
//
//  Created by Максим Зыкин on 05.01.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var progressView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        progressView.bounceOut(duration: 3)

        5.times { print("Hello") }

        var numbers = [1, 2, 3, 4, 5]
        print(numbers)
        numbers.remove(item: 3)
        print(numbers)
    }


}

// extension 1: animate out a UIView
extension UIView {
    func bounceOut(duration: TimeInterval) {
        UIView.animate(withDuration: duration) { [unowned self] in
            self.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
        }
    }
}

// extension 2: create a times() method for integers
extension Int {
    func times(_ closure: () -> Void) {
        guard self > 0 else { return }
        
        for _ in 0 ..< self {
            closure()
        }
    }
}

// extension 3: remove an item from an array
extension Array where Element: Comparable {
    mutating func remove(item: Element) {
        if let location = self.firstIndex(of: item) {
            self.remove(at: location)
        }
    }
}
