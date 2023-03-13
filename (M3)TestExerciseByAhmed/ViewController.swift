//
//  ViewController.swift
//  (M3)TestExerciseByAhmed
//
//  Created by Ahmed Muvaza on 5/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var eyesButton: UIButton!
    var isHidden = true
    @IBAction func showPasswordButton(_ sender: Any) {
        if isHidden {
            eyesButton.setImage(UIImage(systemName: "eye"), for: .normal)
            passwordTextField.isSecureTextEntry = false
        } else {
            eyesButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            passwordTextField.isSecureTextEntry = true
        }
        isHidden = !isHidden
        
    }
    
    @IBAction func loginButton(_ sender: Any) {
//        let vc = ThirdViewController()
//                    vc.name = emailTextField.text ?? ""
//                    self.navigationController?.pushViewController(vc, animated: true)
//        emptyTexstField(text: emailTextField)
    }
    
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
        if !emptyTexstField(text: emailTextField),
           !emptyTexstField(text: passwordTextField)  {
            return false
        }
        else if !emptyTexstField(text: emailTextField){
            return false
        }
        else if !emptyTexstField(text: passwordTextField){
            return false
        }
        else {
            return true
        }
    }
    
    override func viewDidLoad() {
      super.viewDidLoad()
    }
}

