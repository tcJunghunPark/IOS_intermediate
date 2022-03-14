//
//  AddAlertViewViewController.swift
//  Drink
//
//  Created by Junghun Park on 2022/03/14.
//

import UIKit

class AddAlertViewController: UIViewController {
    var pickedDate: ((_ date: Date) -> Void)?
    
    @IBOutlet var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dismissButtonTapped(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        pickedDate? (datePicker.date)
        self.dismiss(animated: true, completion: nil)
    }
}
