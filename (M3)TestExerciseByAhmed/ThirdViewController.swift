//
//  ThirdViewController.swift
//  (M3)TestExerciseByAhmed
//
//  Created by Ahmed Muvaza on 10/3/23.
//

import UIKit


//protocol TextFieldDelegate {
//    func trans()
//}

class ThirdViewController: UIViewController {

    @IBOutlet weak var maliTF: UITextField!
//    var name: String = ""
    var name: String?
    var email: String?
    

    override func viewDidLoad(){
        super.viewDidLoad()
        
        //        maliTF.text = name
        
        //        maliTF.text = name
        if email == nil {
            maliTF?.text ?? "\(email)"
        } else {
            print("dsf")
           
        }
    }
}

