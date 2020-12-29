//
//  ViewController.swift
//  AddDoneButtonOnKeyboard
//
//  Created by TDCIAN on 2020/12/29.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField.addDoneButtonOnKeyboard()
    }


}

extension UITextField {
    
    func addDoneButtonOnKeyboard() {
        
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        // MARK: 버튼의 이름과 색상을 바꾸고 싶다면 아래 title과 tintColor를 바꿔보세요!
        let done: UIBarButtonItem = UIBarButtonItem(title: "띠용", style: .done, target: self, action: #selector(self.doneButtonAction))
        done.tintColor = .systemOrange
        // ==============================================================
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
        
    }
    
    @objc func doneButtonAction() {
        self.resignFirstResponder()
    }
    
}
