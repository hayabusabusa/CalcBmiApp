//
//  CalcBmiModel.swift
//  CalcBmiApp
//
//  Created by 山田隼也 on 2020/05/02.
//  Copyright © 2020 Shunya Yamada. All rights reserved.
//

import Foundation

protocol CalcBmiModelInterface: AnyObject {
    var bmi: Double { get }
    var stdWeight: Double { get }
}

final class CalcBmiModel: CalcBmiModelInterface {
    
    // MARK: Properties
    
    private let cmHeight: Double
    private let kgWeight: Double
    private let kStandardWeightConstant: Double = 22.0
    
    // MARK: Initializer
    
    init(cmHeight: Double, kgWeight: Double) {
        self.cmHeight = cmHeight
        self.kgWeight = kgWeight
    }
    
    // MARK: Calculate BMI
    
    var bmi: Double {
        return kgWeight / pow((cmHeight / 100), 2)
    }
    
    var stdWeight: Double {
        return pow((cmHeight / 100), 2) * kStandardWeightConstant
    }
}
