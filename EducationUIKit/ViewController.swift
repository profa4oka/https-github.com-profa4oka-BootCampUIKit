//
//  ViewController.swift
//  EducationUIKit
//
//  Created by Максим Радюш on 21.08.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textName: UITextField!
    @IBAction func showAlert(_ sender: Any) {
        let alertControl = UIAlertController(title: "Error", message: "Message", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            let fieldText = alertControl.textFields?.first
            self.textLabel.text = fieldText?.text!
        }
        alertControl.addTextField { (textField) in
        }
        alertControl.addAction(action)
        self.present(alertControl, animated: true)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: TEST DESCRIPTION


}

