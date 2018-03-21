//
//  ViewController.swift
//  textFieldTest
//
//  Created by Sang won Seo on 2018. 3. 19..
//  Copyright © 2018년 Sang won Seo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTextField.delegate = self // delegate connection
        myTextField.clearButtonMode = UITextFieldViewMode.always
        myTextField.placeholder = "입력하시오!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnPressed(_ sender: UIButton) {
        myLabel.text = myTextField.text
        myTextField.text = ""
        myTextField.resignFirstResponder()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myTextField.resignFirstResponder() //keypad down
        return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.yellow
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

