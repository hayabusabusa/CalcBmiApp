//
//  UIViewController+Extension.swift
//  CalcBmiApp
//
//  Created by 山田隼也 on 2020/05/01.
//  Copyright © 2020 Shunya Yamada. All rights reserved.
//

import UIKit

extension UIViewController {
    func push(viewController: UIViewController, animated: Bool) {
        navigationController?.pushViewController(viewController, animated: animated)
    }
    
    func pop(animated: Bool) {
        navigationController?.popViewController(animated: animated)
    }
    
    func presentAlert(title: String? = "", message: String? = nil, animated: Bool = true, okHandler: ((UIAlertAction) -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: okHandler))
        present(alert, animated: animated, completion: nil)
    }
}
