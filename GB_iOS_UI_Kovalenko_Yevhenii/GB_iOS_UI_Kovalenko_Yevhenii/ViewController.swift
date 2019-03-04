//
//  ViewController.swift
//  GB_iOS_UI_Kovalenko_Yevhenii
//
//  Created by Vence Berg on 01/03/2019.
//  Copyright © 2019 Vence Berg. All rights reserved.
//

import UIKit

let users = [(username:"1",password:"1"),(username:"12",password:"12"),(username:"admin",password:"admin")]
var isLogAndPassCorrect = false

class ViewController: UIViewController {
    
    @IBOutlet weak var loginInput: UITextField!
    
    
    @IBOutlet weak var passwordInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        var login = loginInput.text!
        var password = passwordInput.text!
        
        for i in 0..<users.count{
            
            if login == users[i].username && password == users[i].password {
                isLogAndPassCorrect = true
                return isLogAndPassCorrect
                
            }
        }
        
        
        let alert = UIAlertController(title: "Warning", message: "Wrong input", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        login = ""
        password = ""
        
        
        
        return isLogAndPassCorrect
    }
    
    
    
    
}

