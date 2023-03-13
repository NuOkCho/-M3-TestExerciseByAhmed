//
//  SecondViewController.swift
//  (M3)TestExerciseByAhmed
//
//  Created by Ahmed Muvaza on 10/3/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private func emptyTexstField(text: UITextField) -> Bool {
        guard let empty = text.text else { return false }
        if empty.isEmpty {
            text.layer.borderColor = UIColor.red.cgColor
            text.layer.borderWidth = 3
            text.placeholder = "Заполнить поля!"
            return false
        } else {
            return true
        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if !emptyTexstField(text: usernameTextField),
           !emptyTexstField(text: emailTF),
           !emptyTexstField(text: numberTextField),
           !emptyTexstField(text: passwordTF){
            return false
        }
        else if !emptyTexstField(text: usernameTextField){
            return false
        }
        else if !emptyTexstField(text: emailTF){
            return false
        }
        else if !emptyTexstField(text: numberTextField){
            return false
        }
        else if !emptyTexstField(text: passwordTF){
            return false
        }
        else {
            return true
        }
    }

    
    
    @IBOutlet weak var eyesBtn: UIButton!
    var isHidden = true
    @IBAction func showPasswordBtn(_ sender: Any) {
        if isHidden {
            eyesBtn.setImage(UIImage(systemName: "eye"), for: .normal)
            passwordTF.isSecureTextEntry = false
        } else {
            eyesBtn.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            passwordTF.isSecureTextEntry = true
        }
        isHidden = !isHidden
        
    }
    
    @IBAction func loginBtn(_ sender: Any) {
        let vc = ThirdViewController()
        let email = emailTF.text!
//        vc.email = email ?? ""
        vc.email = email
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
