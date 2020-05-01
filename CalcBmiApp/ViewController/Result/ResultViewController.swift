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
    
    @IBOutlet private weak var bmiLabel: UILabel!
    @IBOutlet private weak var standardWeightLabel: UILabel!
    @IBOutlet private weak var comparisonLabel: UILabel!
    
    // MARK: Properties
    
    // MARK: Lifecycle
    
    static func instantiate() -> ResultViewController {
        return Storyboard.ResultViewController.instantiate(ResultViewController.self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
    }
    
    // MARK: IBAction
    
    @IBAction func onTapBackButton(_ sender: Any) {
        pop(animated: true)
    }
}

// MARK: - Setup

extension ResultViewController {
    
    private func setupNavigation() {
        navigationItem.title = "計算結果"
    }
}
