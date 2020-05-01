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
    
    // MARK: Properties
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension InputViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
