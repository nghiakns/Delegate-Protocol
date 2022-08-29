//
//  ChooseViewController.swift
//  Delegate&Protocol
//
//  Created by Kim Nghĩa on 29/08/2022.
//

import UIKit

class ChooseViewController: UIViewController {
    
    var delegateTest: SelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func goToCat(_ sender: Any) {
        delegateTest.didChoice(image: UIImage(named: "cat")!, name: "Your choice is a cat", color: .blue)
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func goToDog(_ sender: Any) {
        delegateTest.didChoice(image: UIImage(named: "dog")!, name: "Your choice is a dog", color: .green)
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
