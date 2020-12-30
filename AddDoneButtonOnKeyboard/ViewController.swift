//
//  ViewController.swift
//  AddDoneButtonOnKeyboard
//
//  Created by TDCIAN on 2020/12/29.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 완료 버튼을 붙이고자 하는 텍스트필드와 텍스트뷰에 addDoneButtonOnKeyboard() 메소드를 붙여주세요!
        textField.addDoneButtonOnKeyboard()
        
        textView.addDoneButtonOnKeyboard()
    }


}

extension UITextField {
    
    func addDoneButtonOnKeyboard() {
        
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        // MARK: 버튼의 이름과 색상을 바꾸고 싶다면 아래 title과 tintColor를 바꿔보세요!
        let done: UIBarButtonItem = UIBarButtonItem(title: "완료", style: .done, target: self, action: #selector(self.doneButtonAction))
        done.tintColor = .black
        // ==============================================================
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
        
    }
    
    // MARK: 완료 버튼을 눌렀을 때 실행돼야 할 내용을 아래에 구현해주시면 됩니다(현재는 키보드가 사라지도록 하는 메소드만 있는 상태입니다)
    @objc func doneButtonAction() {
        self.resignFirstResponder()
    }
    
}

extension UITextView {
    func addDoneButtonOnKeyboard() {
        
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        // MARK: 버튼의 이름과 색상을 바꾸고 싶다면 아래 title과 tintColor를 바꿔보세요!
        let done: UIBarButtonItem = UIBarButtonItem(title: "완료", style: .done, target: self, action: #selector(self.doneButtonAction))
        done.tintColor = .systemBlue
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
