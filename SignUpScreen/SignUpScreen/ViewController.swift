//
//  ViewController.swift
//  SignUpScreen
//
//  Created by SooVin Park on 04/06/2019.
//  Copyright © 2019 groovypark. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var telTextField: UITextField!
    @IBOutlet weak var blogTextField: UITextField!
    @IBOutlet weak var resultTextView: UITextView!
    
    @IBAction func signUpAction(_ sender: AnyObject) {
        resultTextView.text = "\(nameTextField.text!) 님 가입을 축하합니다."
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        print("textFieldShoudReturn")
        nameTextField.resignFirstResponder()    // 비활성화 시킴(키보드 내려감)
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesMoved")
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesEnded")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad() // 초기화하는 부분
//        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

