//
//  ResultViewController.swift
//  CalcBmiApp
//
//  Created by 山田隼也 on 2020/04/30.
//  Copyright © 2020 Shunya Yamada. All rights reserved.
//

import UIKit

final class ResultViewController: UIViewController {
    
    // MARK: IBOutlet
    
    // MARK: Properties
    
    // MARK: Lifecycle
    
    static func instantiate() -> ResultViewController {
        return Storyboard.ResultViewController.instantiate(ResultViewController.self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBAction
    
    @IBAction func onTapBackButton(_ sender: Any) {
        pop(animated: true)
    }
}
