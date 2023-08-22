//
//  ViewController.swift
//  EducationUIKit
//
//  Created by Максим Радюш on 21.08.23.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Label to display TextField
    @IBOutlet weak var textLabel: UILabel!
    //MARK: Enter info
    @IBOutlet weak var textName: UITextField!
    @IBAction func showAlert(_ sender: Any) {
        let customerAlert = showCustomAlert(title: "Header Menu", message: "Enter your name:", style: .alert)
        present(customerAlert, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: func customAlert
    //123
    func showCustomAlert(title: String, message: String, style: UIAlertController.Style) -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let actionController = UIAlertAction(title: "OK", style: .default) { _ in
            if let text = alertController.textFields?.first {
                self.textLabel.text = text.text
            } else {
                self.textLabel.text = "Empty"
            }
        }
        alertController.addTextField()
        alertController.addAction(actionController)
        return alertController
    }
}

