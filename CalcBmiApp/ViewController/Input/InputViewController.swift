//
//  InputViewController.swift
//  CalcBmiApp
//
//  Created by 山田隼也 on 2020/04/30.
//  Copyright © 2020 Shunya Yamada. All rights reserved.
//

import UIKit

final class InputViewController: UIViewController {
    
    // MARK: IBOutlet
    
    @IBOutlet private weak var heightTextField: UITextField!
    @IBOutlet private weak var weightTextField: UITextField!
    
    // MARK: Properties
    
    // MARK: Lifecycle
    
    static func instantiate() -> InputViewController {
        return Storyboard.InputViewController.instantiate(InputViewController.self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
        setupHeightTextField()
        setupWeightTextField()
        setupKeyboardObserver()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.endEditing(true)
    }
    
    // MARK: IBAction
    
    @IBAction func onTapCalcButton(_ sender: Any) {
        push(viewController: ResultViewController.instantiate(), animated: true)
    }
    
    @IBAction func onTapResetButton(_ sender: Any) {
        heightTextField.text = ""
        weightTextField.text = ""
    }
}

// MARK: - Setup

extension InputViewController {
    
    private func setupNavigation() {
        navigationItem.title = "入力画面"
    }
    
    private func setupHeightTextField() {
        heightTextField.delegate = self
    }
    
    private func setupWeightTextField() {
        weightTextField.delegate = self
    }
}

// MARK: - TextField delegate

extension InputViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
}

// MARK: - Keyboard

extension InputViewController {
    
    private func setupKeyboardObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(onKeyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(onKeyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc
    private func onKeyboardWillShow(_ notification: Notification?) {
        // NOTE: キーボードの高さ、アニメーションの速度を取得
        guard let rect = (notification?.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue,
            let duration = notification?.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? TimeInterval else { return }
        // NOTE: キーボードの高さ分 view を上にずらす
        UIView.animate(withDuration: duration) {
            self.view.transform = CGAffineTransform(translationX: 0, y: -rect.size.height)
        }
    }
    
    @objc
    private func onKeyboardWillHide(_ notification: Notification?) {
        guard let duration = notification?.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? TimeInterval else { return }
        // NOTE: 上にずらしたのを元に戻す
        UIView.animate(withDuration: duration) {
            self.view.transform = CGAffineTransform.identity
        }
    }
}

// MARK: - Touch event

extension InputViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // NOTE: 画面タップでキーボードを閉じる
        view.endEditing(true)
    }
}
