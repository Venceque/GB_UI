//
//  ViewController.swift
//  GB_iOS_UI_Kovalenko_Yevhenii
//
//  Created by Vence Berg on 07/03/2019.
//  Copyright © 2019 Vence Berg. All rights reserved.
//

import UIKit


let users = [(username:"1",password:"1"),(username:"12",password:"12"),(username:"admin",password:"admin")]
var isLogAndPassCorrect = false

extension UIViewController{
    
    func HideKeyboard(){
        let Tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DissmissKeyboard))
        view.addGestureRecognizer(Tap)
    }
    
    @objc func DissmissKeyboard() {
        view.endEditing(true)
    }
}

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.HideKeyboard()
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(adjustForKeyboard), name: UIResponder.keyboardWillHideNotification, object: nil)
        notificationCenter.addObserver(self, selector: #selector(adjustForKeyboard), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    @objc func adjustForKeyboard(notification: Notification) {
        let userInfo = notification.userInfo!
        
        let keyboardScreenEndFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let keyboardViewEndFrame = view.convert(keyboardScreenEndFrame, from: view.window)
        
        if notification.name == UIResponder.keyboardWillHideNotification {
            scrollView.contentInset = UIEdgeInsets.zero
        } else {
            scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardViewEndFrame.height, right: 0)
        }
            scrollView.scrollIndicatorInsets = scrollView.contentInset
}
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
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



