//
//  EnterEmailViewController.swift
//  SpotifyLogin
//
//  Created by Junghun Park on 2022/03/09.
//

import UIKit

class EnterEmailViewController: UIViewController{
    
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var errorMessageLabel: UILabel!
    @IBOutlet var nextButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.nextButton.layer.cornerRadius = 30
        self.nextButton.isEnabled = false
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        emailTextField.becomeFirstResponder() //화면 켰을 때 커서가 위치하도록
        
        //Navigation Bar 보이기
        navigationController?.navigationBar.isHidden = false
    }
    @IBAction func nextButtonTapped(_ sender: UIButton) {
    }
}
extension EnterEmailViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        let isEmailEmpty = emailTextField.text == "" //emailTextField.text?.isEmpty
        let isPasswordEmpty = passwordTextField.text == ""
        
        nextButton.isEnabled = !isEmailEmpty && !isPasswordEmpty
    }
}
