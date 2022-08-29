//
//  ViewController.swift
//  Delegate&Protocol
//
//  Created by Kim Nghĩa on 29/08/2022.
//

import UIKit

class ViewController: UIViewController, SelectionDelegate {
    
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func chooseAnimal(_ sender: Any) {
        let str = UIStoryboard.init(name: "Main", bundle: nil)
        let chooseVC = str.instantiateViewController(withIdentifier: "choose") as! ChooseViewController
        chooseVC.delegateTest = self
        navigationController?.pushViewController(chooseVC, animated: true)
    }
    
    func didChoice(image: UIImage, name: String, color: UIColor) {
        animalImage.image = image
        animalName.text = name
        view.backgroundColor = color
    }
}

