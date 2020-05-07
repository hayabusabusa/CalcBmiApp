//
//  ClacBmiModelTests.swift
//  CalcBmiAppTests
//
//  Created by 山田隼也 on 2020/05/07.
//  Copyright © 2020 Shunya Yamada. All rights reserved.
//

import XCTest
@testable import CalcBmiApp

class CalcBmiModelTests: XCTestCase {
    
    private let kStandardWeightConstant: Double = 22.0
    
    func test_160cm_50kgの人の各種計算が正しく行えていることを確認() {
        let kgWeight: Double = 50
        let cmHeight: Double = 160
        
        let bmi          = kgWeight / pow((cmHeight / 100.0), 2)
        let stdWeight    = pow((cmHeight / 100.0), 2) * kStandardWeightConstant
        let diffOfWeight = kgWeight - stdWeight
        
        let model = CalcBmiModel(cmHeight: cmHeight, kgWeight: kgWeight)
        
        XCTContext.runActivity(named: "BMIの計算が正しく行えていることを確認") { _ in
            XCTAssertEqual(model.bmi, bmi, "BMI = 体重kg / 身長m ^ 2 で計算した結果と一致しません")
        }
        
        XCTContext.runActivity(named: "標準体重の計算が正しく行えていることを確認") { _ in
            XCTAssertEqual(model.stdWeight, stdWeight, "標準体重 = 身長m ^ 2 * 22 で計算した結果と一致しません")
        }
        
        XCTContext.runActivity(named: "標準体重との差が正しく計算できていることを確認") { _ in
            XCTAssertEqual(model.diffOfWeight, diffOfWeight, "体重 - 標準体重 の結果が一致しません」")
        }
    }
    
    func test_180cm_90kgの人の各種計算が正しく行えていることを確認() {
        let kgWeight: Double = 90
        let cmHeight: Double = 180
        
        let bmi          = kgWeight / pow((cmHeight / 100.0), 2)
        let stdWeight    = pow((cmHeight / 100.0), 2) * kStandardWeightConstant
        let diffOfWeight = kgWeight - stdWeight
        
        let model = CalcBmiModel(cmHeight: cmHeight, kgWeight: kgWeight)
        
        XCTContext.runActivity(named: "BMIの計算が正しく行えていることを確認") { _ in
            XCTAssertEqual(model.bmi, bmi, "BMI = 体重kg / 身長m ^ 2 で計算した結果と一致しません")
        }
        
        XCTContext.runActivity(named: "標準体重の計算が正しく行えていることを確認") { _ in
            XCTAssertEqual(model.stdWeight, stdWeight, "標準体重 = 身長m ^ 2 * 22 で計算した結果と一致しません")
        }
        
        XCTContext.runActivity(named: "標準体重との差が正しく計算できていることを確認") { _ in
            XCTAssertEqual(model.diffOfWeight, diffOfWeight, "体重 - 標準体重 の結果が一致しません」")
        }
    }
}
