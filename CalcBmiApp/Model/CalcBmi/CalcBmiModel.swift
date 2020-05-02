//
//  CalcBmiModel.swift
//  CalcBmiApp
//
//  Created by 山田隼也 on 2020/05/02.
//  Copyright © 2020 Shunya Yamada. All rights reserved.
//

import Foundation

protocol CalcBmiModelInterface: AnyObject {
    func calcBMI(with cmHeight: Double, kgWeight: Double) -> Double
    func calcStandardWeight(with cmHeight: Double) -> Double
}

final class CalcBmiModel: CalcBmiModelInterface {
    
    // MARK: Properties
    
    private let kStandardWeightConstant: Double = 22.0
    
    // MARK: Initializer
    
    init() {
        
    }
    
    // MARK: Calculate BMI
    
    /// Calculate Body Mass Index with height and weight.
    ///
    /// - NOTE: BMI = weight(kg) / (height(m)) ^ 2
    /// - Parameters:
    ///   - cmHeight: Height (cm)
    ///   - kgWeight: Weight (kg)
    /// - Returns: BMI
    func calcBMI(with cmHeight: Double, kgWeight: Double) -> Double {
        return kgWeight / pow((cmHeight / 100), 2)
    }
    
    /// Calculate standard weight with height.
    ///
    /// - Parameter cmHeight: Height (cm)
    /// - Returns: Standard weight (kg)
    func calcStandardWeight(with cmHeight: Double) -> Double {
        return pow((cmHeight / 100), 2) * kStandardWeightConstant
    }
}
