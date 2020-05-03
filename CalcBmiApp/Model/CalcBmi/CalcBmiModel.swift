//
//  CalcBmiModel.swift
//  CalcBmiApp
//
//  Created by 山田隼也 on 2020/05/02.
//  Copyright © 2020 Shunya Yamada. All rights reserved.
//

import Foundation

protocol CalcBmiModelInterface {
    var bmi: Double { get }
    var stdWeight: Double { get }
    var diffOfWeight: Double { get }
}

struct CalcBmiModel: CalcBmiModelInterface {
    
    // MARK: Properties
    
    private let cmHeight: Double
    private let kgWeight: Double
    private let kStandardWeightConstant: Double = 22.0
    
    private(set) var bmi: Double
    private(set) var stdWeight: Double
    private(set) var diffOfWeight: Double
    
    // MARK: Initializer
    
    init(cmHeight: Double, kgWeight: Double) {
        self.cmHeight = cmHeight
        self.kgWeight = kgWeight
        self.bmi = kgWeight / pow((cmHeight / 100), 2)
        self.stdWeight = pow((cmHeight / 100), 2) * kStandardWeightConstant
        self.diffOfWeight = kgWeight - stdWeight
    }
}
