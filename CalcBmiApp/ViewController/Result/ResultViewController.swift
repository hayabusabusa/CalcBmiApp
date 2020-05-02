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
    
    private var model: CalcBmiModelInterface!
    
    // MARK: Lifecycle
    
    static func configure(with cmHeight: Double, kgWeight: Double) -> ResultViewController {
        let vc = Storyboard.ResultViewController.instantiate(ResultViewController.self)
        vc.model = CalcBmiModel(cmHeight: cmHeight, kgWeight: kgWeight)
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
        setupBmiLabel()
        setupStandardWeightLabel()
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
    
    private func setupBmiLabel() {
        bmiLabel.text = String(format: "%.2f", model.bmi)
    }
    
    private func setupStandardWeightLabel() {
        standardWeightLabel.text = String(format: "%.2f kg", model.stdWeight)
    }
}
